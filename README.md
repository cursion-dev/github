# Cursion-Runner Action

This action lets you run a Test, Case, or Flow for a specific Site from your [Cursion account](https://app.cursion.dev/account).


## Inputs

| key | description | required | default | 
| --- | --- | --- | --- |
| `token` | Your API Token found in your [Cursion account](https://app.cursion.dev/account) | **YES** | `None` |
| `type` | The type of run: `test`, `case`, or `flow` | **YES** | `test` |
| `site-id` | `ID` of the `Site` you want to run against | **YES** | `None` |
| `case-id` | `ID` of the `Case` you want to run | **NO** | `None` |
| `flow-id` | `ID` of the `Flow` you want to run | **NO** | `None` |
| `updates` | Values to update for a `Case`. (e.g. `step-1:<value> step-2:<value>`)| **NO** | `None` |
| `api-root` | Your custom API root url | **NO** | `https://api.cursion.dev` |
| `client-root` | Your custom Client root url | **NO** | `https://app.cursion.dev` |

## Example usage

``` yml
uses: actions/cursion-runner@v0.0.5
with:
  token: ${{ secrets.CURSION_API_TOKEN }}
  type: 'flow'
  site-id: <your-site-id>
  flow-id: <your-flow-id>
```