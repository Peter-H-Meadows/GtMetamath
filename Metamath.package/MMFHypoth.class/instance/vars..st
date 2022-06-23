accessing
vars: v

vars := v.

vars do: [ :ea | ea fullname: ea name , '-' , name  ]