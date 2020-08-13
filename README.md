# Liquibase Sample

## Requirements

- [Docker](https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script)
- [Docker-Compose](https://docs.docker.com/compose/install/#install-compose-on-linux-systems)

## References
- [Liquibase](https://docs.liquibase.com/home.html)
- [Liquibase Docker images](https://dockerfile.readthedocs.io/en/latest/content/DockerImages/dockerfiles/liquibase.html)

## Running through Make

### Update
Sets a Tag on the current database state for future rollback and updates database to current version.

```
make update TAG={TAG}
```
**Parameters**

| Name       | Required         | Descrption      |
| :--------- | :--------------  | :-------        |
| TAG        | Yes              | The tag you can add to changesets to determine which changesets in the changelog to evaluate based on their tags.  |

### Rollback
Reverts all changes that were made to the database after the specified tag.

```
make rollback TAG={TAG}
```

**Parameters**

| Name       | Required         | Descrption      |
| :--------- | :--------------  | :-------        |
| TAG        | Yes              | The tag corresponding to the state witch the database will be reverted.  |
