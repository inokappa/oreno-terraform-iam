## oreno-terraform-iam
[![wercker status](https://app.wercker.com/status/27334f24497598146143aff076b17a7f/s/master "wercker status")](https://app.wercker.com/project/bykey/27334f24497598146143aff076b17a7f)

### required

- AWS access key
- AWS secret access key

### terraform plan

```
terraform plan \
-var 'access_key=AK123456789123456789' \
-var 'secret_key=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' 
```

### terraform apply

```
terraform apply \
-var 'access_key=AK123456789123456789' \
-var 'secret_key=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' 
```

### memo

- Check Instance Profile

```
aws iam list-instance-profiles
```

- Delete Instance Profile

```
aws iam delete-instance-profile --instance-profile-name test_profile 
```
