# 7zip-profiles-shell-x

Sample batch scripts for [oleg-shilo/shell-x](https://github.com/oleg-shilo/shell-x) providing 7-Zip archive profiles in Windows shell context menu. Output archive name contains current date and time.

## Installation
Copy into the configuration folder of Shell-x (i.e. run `shell-x -open` and place the downloaded `[any]` folder there).

## Profiles
 - *Backup* - creates an archive with normal (5) compression level.
 - *Backup - fastest* - creates an archive with fastest (1) compression level.
 
## Output archive name examples
 - Directory: `C:\Users\user\Desktop\photos\` › `C:\Users\user\Desktop\photos_2025-08-08_15-13-20.7z`
 - Single file: `C:\Users\user\Desktop\photo1.jpg` › `C:\Users\user\Desktop\photo1.jpg_2025-08-08_15-13-20.7z`
 - Multiple files: `C:\Users\user\Desktop\photo1.jpg`, `C:\Users\user\Desktop\photo2.jpg` › `C:\Users\user\Desktop\Desktop_2025-08-08_15-13-20.7z`
