#!/usr/bin/env python3
from os.path import expanduser
import distutils, distutils.dir_util
import pathlib, yaml

def main():
    override_path = pathlib.Path('override')
    if not override_path.exists() or not override_path.is_dir():
        print('override/ not present in cwd.')
        return

    with open('override.yml', 'r') as settings_file:
        settings = yaml.load(settings_file, Loader=yaml.BaseLoader)
    override_type = settings.get('override_type')
    minecraft_path = pathlib.Path(expanduser(settings.get('minecraft_path')))
    if not minecraft_path.exists() or not minecraft_path.is_dir():
        if minecraft_path.exists(): print(str(minecraft_path))
        else: print('None!')
        return

    if override_type == 'client':
        client_override(override_path, minecraft_path)
    elif override_type == 'server':
        server_override(override_path, minecraft_path)
    else:
        print('Invalid override_type definition.')

def client_override(override_path, minecraft_path):
    shared_override(override_path, minecraft_path)
    client_path = pathlib.Path(override_path, 'client')
    print('Copying "override/client/*" to "{}"'.format(str(minecraft_path)))
    distutils.dir_util.copy_tree(str(client_path), str(minecraft_path))

def server_override(override_path, minecraft_path):
    shared_override(override_path, minecraft_path)
    server_path = pathlib.Path(override_path, 'server')
    print('Copying "override/server/*" to "{}"'.format(str(minecraft_path)))
    distutils.dir_util.copy_tree(str(server_path), str(minecraft_path))

def shared_override(override_path, minecraft_path):
    shared_path = pathlib.Path(override_path, 'shared')
    print('Copying "override/shared/*" to "{}"'.format(str(minecraft_path)))
    distutils.dir_util.copy_tree(str(shared_path), str(minecraft_path))

if __name__ == '__main__':
    main()
