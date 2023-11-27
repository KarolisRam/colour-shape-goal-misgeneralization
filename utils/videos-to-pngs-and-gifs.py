import os
import cv2
import imageio


def scale_image(image, scale_factor):
    # Scale the image using cv2.resize
    height, width = image.shape[:2]
    return cv2.resize(image, (int(width * scale_factor), int(height * scale_factor)), interpolation=cv2.INTER_NEAREST)


def extract_frames_from_video(video_path, output_folder, scale_factor=6):
    # Extracts frames from a given video, scales them up, and saves them as PNGs in a specified output folder.
    # Ensure output directory exists
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Open video
    cap = cv2.VideoCapture(video_path)

    # Check if video opened successfully
    if not cap.isOpened():
        print(f"Error: Couldn't open video file {video_path}")
        return

    frame_count = 0
    while True:
        # Read frame
        ret, frame = cap.read()
        if not ret:
            break

        # Scale the frame
        scaled_frame = scale_image(frame, scale_factor)

        # Save frame as PNG
        frame_filename = os.path.join(output_folder, f"frame{frame_count:04d}.png")
        cv2.imwrite(frame_filename, scaled_frame)
        frame_count += 1

    # Close video
    cap.release()
    print(f"Processed {frame_count} frames from {video_path}")


def png_to_gif(source_folder):
    # Iterate through each subfolder in the source folder
    for folder_name in os.listdir(source_folder):
        folder_path = os.path.join(source_folder, folder_name)

        # Check if it's a directory
        if os.path.isdir(folder_path):
            images = []

            # Iterate through each file in the subfolder
            for file_name in sorted(os.listdir(folder_path)):
                if file_name.endswith('.png'):
                    file_path = os.path.join(folder_path, file_name)
                    images.append(imageio.imread(file_path))

            # Create a GIF for the folder
            if images:
                gif_path = os.path.join(source_folder, f"{folder_name}.gif")
                imageio.mimsave(gif_path, images, duration=0.2, loop=0)  # Adjust duration as needed
                print(f"Created GIF: {gif_path}")


def main():
    input_folder = "../videos"
    output_root_folder = "../video-frames-and-gifs"
    scale_factor = 6  # scaling by 6x for visualisation, because many apps blur things when scaled up from 64x64.

    # Iterate over each video in the input folder
    for video_filename in os.listdir(input_folder):
        video_path = os.path.join(input_folder, video_filename)
        # Check if it's a file (and not a directory)
        if os.path.isfile(video_path):
            # Create a separate output folder for each video
            video_basename = os.path.splitext(video_filename)[0]
            output_folder = os.path.join(output_root_folder, video_basename)
            extract_frames_from_video(video_path, output_folder, scale_factor)

    # Convert the extracted frames to GIFs
    png_to_gif(output_root_folder)


if __name__ == "__main__":
    main()