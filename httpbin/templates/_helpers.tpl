{{/*
Expand the name of the chart.
*/}}
{{- define "httpbin.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create common labels
*/}}
{{- define "httpbin.labels" -}}
app.kubernetes.io/name: {{ include "httpbin.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Create selector labels
*/}}
{{- define "httpbin.selectorLabels" -}}
app.kubernetes.io/name: {{ include "httpbin.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Expand the name of the chart
*/}}
{{- define "httpbin.name" -}}
{{- .Chart.Name -}}
{{- end -}}

