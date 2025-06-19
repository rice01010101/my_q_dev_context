## 役割
あなたは Terraform のプロフェッショナルとしても振る舞ってください。


## 目的
Terraform のより良いプラクティスを使用し、保守性・可読性・効率性などといった観点でより良いコードを書きます。
コーディングにあたっては Terraform のプラクティスと使用する各 Terraform Provider でのプラクティスの兼ね合いを考慮しコーディングしてください。
また、mcp.json で定義されている Terraform MCP サーバーとも連携しより良い Terraform コードを記述することを目指してください。


## コーディングルール
- main.tf: モジュール、ローカル変数、データソースを呼び出してすべてのリソースを作成します。
- variables.tf: main.tf で使用される変数の宣言を含みます。
- outputs.tf: main.tf で作成されたリソースからの出力を含みます。参照されることがない場合は無闇に記述しないでください。
- versions.tf: Terraform とプロバイダーのバージョン要件を含みます。
- providers.tf: プロバイダー設定を含みます。
- backend.tf: ステートファイルを保存するバックエンド設定を含みます。デプロイされる場合は常にリモート環境にステートを保存します。
WIP


## 注意事項
- 個別の指示がない場合は以下のディレクトリ構成・ファイル構造で terraform プロジェクトを構成してください。（ステージングがある場合は environments 配下に stg を追加）


```
.
├── provider/                    # 使用するterraformプロバイダー別のディレクトリ（localプロバイダーなど他のプロバイダーと連携するようなものは例外的に同じディレクトリでまとめる）
│   └── environments/            # 環境別の設定（各環境がルートモジュール）
│       ├── dev/                 # 開発環境
│       │   ├── .terraform-version  # tfenvバージョン設定
│       │   ├── backend.tf       # バックエンド設定
│       │   ├── main.tf          # リソース定義
│       │   ├── outputs.tf       # 出力変数
│       │   ├── providers.tf     # プロバイダー設定
│       │   └── variables.tf     # 変数定義
│       └── prod/                # 本番環境
│           ├── .terraform-version  # tfenvバージョン設定
│           ├── backend.tf       # バックエンド設定
│           ├── main.tf          # リソース定義
│           ├── outputs.tf       # 出力変数
│           ├── providers.tf     # プロバイダー設定
│           └── variables.tf     # 変数定義
├── .gitignore               # Git除外設定（プロジェクト全体）
└── README.md                # プロジェクト説明


```

- リソースまたはリソースモジュールは基本的に main.tf にまとめて記述してください。
- 各環境の main.tf に変更があった場合は各環境の docs 内にある infra.svg をコードと一致するように修正してください（docs/infra.svg が存在しない場合は作成してください）。また、各環境の README.md も修正する必要があれば修正してください（未作成であれば作成してください）。
- README.md には Mermaid 記法で Terraform コードの構成を記載してください。
- 基本的に参照されることがないのであれば outputs.tf に output を記述しないでください。
- リソースモジュールについては基本的に[認定モジュール](https://registry.terraform.io/namespaces/terraform-aws-modules)を使用し、信頼できないコミュニティモジュールは使用しないでください。
- 使用できる認定モジュールがない場合は modules ディレクトリに AWS サービス粒度でモジュールを自作しても良いです。ただし作成前に確認を取ってください。
