# hello-world Github Action

Following the guide for creating a docker file github action:

https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action

This action prints a welcoming message `Hello mate` by default, or a personalised message `Hello`+name of the person to greet in the log. 

## Inputs

### `who-to-greet`

**Required** The name of the person to greet. Default `"mate"`.

## Outputs

### `time`

The time of the friendly social gesture.


## Example usage

```yaml
uses: actions/hello-world-docker-action@v1
with:
  who-to-greet: 'Garry from Goondiwindi'
```
