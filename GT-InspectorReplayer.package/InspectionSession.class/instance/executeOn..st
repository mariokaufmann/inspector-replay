executing
executeOn: anObject
| intermediateResult |

intermediateResult := anObject.
actions do: [ :action | intermediateResult := action executeOn: intermediateResult ].

^ intermediateResult 