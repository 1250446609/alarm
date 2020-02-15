package controller

import (
	"github.com/kongyixueyuan.com/alarm/service"
	"net/http"
)

// 添加信息
func (app *Application) AddAlarm(w http.ResponseWriter, r *http.Request) {

	alarm := service.Alarm{
		Id:           r.FormValue("id"),
		SiteId:       r.FormValue("siteId"),
		NoticeType:   r.FormValue("noticeType"),
		AlarmDetail:  r.FormValue("alarmDetail"),
		AlarmLevel:   r.FormValue("alarmLevel"),
		SiteType:     r.FormValue("siteType"),
		TriggerValue: r.FormValue("triggerValue"),
		AlarmParam:   r.FormValue("alarmParam"),
		AlarmTime:    r.FormValue("alarmTime"),
		Auditor:      r.FormValue("auditor"),
	}

	app.Setup.SaveAlarm(alarm)
}
