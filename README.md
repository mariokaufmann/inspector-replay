# GtInspector based on Bloc

An implementation of GtInspector based on Bloc that will have full support for storing, sharing and replaying navigation sessions.

Run this script for installation:

```Smalltalk
Iceberg enableMetacelloIntegration: true.
Metacello new
   baseline: 'GTInspectorReplayer';
   repository: 'github://mariokaufmann/inspector-replay/src';
   load
```
