#!/bin/bash
### FIXME: 現状の機能上では単一チャットセッション内でのみtrustが有効（セッション間でtrustが永続化されない）であるため以下の設定は意味がない。メモとして残す。

### trust mcp
# aws diagram
q chat --no-interactive "/tools trust awslabsaws_diagram_mcp_server___generate_diagram"
q chat --no-interactive "/tools trust awslabsaws_diagram_mcp_server___get_diagram_examples"
q chat --no-interactive "/tools trust awslabsaws_diagram_mcp_server___list_icons"
# aws doc
q chat --no-interactive "/tools trust awslabsaws_documentation_mcp_server___read_documentation"
q chat --no-interactive "/tools trust awslabsaws_documentation_mcp_server___recommend" # ok
q chat --no-interactive "/tools trust awslabsaws_documentation_mcp_server___search_documentation"
# aws core
q chat --no-interactive "/tools trust awslabscore_mcp_server___prompt_understanding" # ok
# aws cost analysis
q chat --no-interactive "/tools trust awslabscost_analysis_mcp_server___analyze_cdk_project"
q chat --no-interactive "/tools trust awslabscost_analysis_mcp_server___analyze_terraform_project" # ok
q chat --no-interactive "/tools trust awslabscost_analysis_mcp_server___generate_cost_report" # ok
q chat --no-interactive "/tools trust awslabscost_analysis_mcp_server___get_bedrock_patterns" # ok
q chat --no-interactive "/tools trust awslabscost_analysis_mcp_server___get_pricing_from_api" # ok
q chat --no-interactive "/tools trust awslabscost_analysis_mcp_server___get_pricing_from_web" # ok
# aws terraform
q chat --no-interactive "/tools trust awslabsterraform_mcp_server___RunCheckovScan" # ok
q chat --no-interactive "/tools trust awslabsterraform_mcp_server___SearchAwsProviderDocs" # ok
q chat --no-interactive "/tools trust awslabsterraform_mcp_server___SearchAwsccProviderDocs"
q chat --no-interactive "/tools trust awslabsterraform_mcp_server___SearchSpecificAwsIaModules" # ok
q chat --no-interactive "/tools trust awslabsterraform_mcp_server___SearchUserProvidedModule" # ok
