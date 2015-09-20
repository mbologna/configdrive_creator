# config-drive (cloud-config) generator

This simple script prepares a config-drive containing user customizations (`cloud-config`) for CoreOS deployments. 
Reference: https://coreos.com/os/docs/latest/config-drive.html

## Usage

1. `cp user_data.example user_data`
2. Edit user_data to suit your needs (See https://coreos.com/os/docs/latest/cloud-config.html)
3. `chmod +x configdrive_creator.sh`
4. `./configdrive_creator.sh` (it will create `configdrive.iso` in the current directory) 
5. Mount `configdrive.iso` as a drive for CoreOS

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request 
