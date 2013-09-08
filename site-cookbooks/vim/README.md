# vim Cookbook
Vim7.4をソースからインストールするクックブック  
以下の方針でインストールする  
* /usr/local/binにインストール
* 日本語(マルチバイト)に対応する
* ほとんどの機能を有効にしてコンパイルする
* 参考URL
[CentOS 6.3にVim 7.3をインストールする](http://qiita.com/muniere/items/0569d05d470c5d3dc51b)

## Requirements

#### packages

## Attributes

#### vim::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['vim']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### vim::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `vim` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[vim]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
