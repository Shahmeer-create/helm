
{{/* Common labels */}}
{{- define "ml-platform.labels" -}}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{/* Generate tenant name */}}
{{- define "tenant.name" -}}
{{- . | replace "_" "-" | lower -}}
{{- end -}}
