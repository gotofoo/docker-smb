# docker-smb
SMB File Server

## Running the container
0.  Become root:

    ```
    sodu su
    ```
1.  Create a folder for storing the samba configuration and database files
2.  Run the container:

    ```
    docker run -d --name smb \
        -p 139:139 -p 445:445 \
        -v /data:/data \
        gotofoo/smb
    ```
3.  Start the container:

    ```
    docker start smb
    ```

## Commands
The following commands are available for the administration of the server.

### Add a new user

    ```
    docker exec -it smb useradd <username>
    ```

### Change the password of a User

    ```
    docker exec -it smb passwd <username>
    ```
