Bitnoise packages list
======================

### Adding the repository to composer.json

```json
{
    "repositories": [
        {
            "type": "composer",
            "url": "http://bitnoise.github.io/packages/"
        }
    ]
}
```

### Adding new package to satis.json

```json
{
    "repositories": [
        {
            "type": "vcs",
            "url":  "git@github.com:Bitnoise/BtnBaseBundle.git"
        }
    ]
}
```

### Update packages.json

* Clone repository
* run `update.sh` (https://github.com/composer/satis executable required)
