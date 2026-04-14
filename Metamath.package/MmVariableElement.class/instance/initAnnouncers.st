accessing
initAnnouncers

model announcer when: MmHighlightAnnouncement send: #highlight: to: self.
model announcer when: MmVariableMappedAnnouncement send: #mapped: to: self.
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self.


model announcer when: MmSetSecondAnn send: #highlight: to: self.
