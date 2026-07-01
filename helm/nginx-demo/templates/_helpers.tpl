{{- define "nginx-demo.name" -}}
nginx-demo
{{- end -}}

{{- define "nginx-demo.fullname" -}}
{{ .Release.Name }}-nginx-demo
{{- end -}}

