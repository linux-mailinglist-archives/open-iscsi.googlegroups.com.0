Return-Path: <open-iscsi+bncBDO7B5X3UIBBBIGH437AKGQEQAO6UYQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C862DBAFA
	for <lists+open-iscsi@lfdr.de>; Wed, 16 Dec 2020 07:05:21 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id g5sf16778322qke.22
        for <lists+open-iscsi@lfdr.de>; Tue, 15 Dec 2020 22:05:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608098720; cv=pass;
        d=google.com; s=arc-20160816;
        b=DXyMB5W6krz0rsEpb7CMojLCklBBj/CCzAagDB357XsUwOEY9/pu+xgYKLWHqdl99w
         HHw9+cqHAe5p1IPiiRspj/htAq8fK/AZLuuyQa0m+Zu//wXZnySx8bDx64xQuW/d7bpW
         BUffRFC1LbN4/kmCIctmtYPfemBKj6yAJ0Y6HDsEvybEJJQ5iEUGyYjXFMPfk4TuWnBm
         GeIzisc1PiXlUlt90IFz/67jNPXuvuxuGRoMtYdSiommiT8Dtr+oLhpTlbReoetNK6Vl
         DWB1T4H3DMroKuFVFk9/kLBCOFgGuoUN6jb+U6T5vJvx1impYuM5sNI/HwDbalj7usWP
         Cxew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=7z2bKREIOVJvwZyFM/kZlLdXmS1DLTqLbnmzG9J7ifU=;
        b=Yt9TTpt3UBCIGy3+9v0MNw8bqW48eTtzLTRQEymtKYvwguiaCVQ0BkX0qhC+ZyENe0
         ZEAaGEOtqw1L3YTRfBxb0Du3gv1EUa5DiBdCkUxEd5My7yVD9tcibpJo1Cocq19Ht6sI
         8dMD5E/ELwvJHxc9aDK/TfCWBwrHFp49k1aPnbMI24bKI91kMSdL9b2j2m2th7BtPpWK
         qk3iMl8E8UopVsbo7aVciCmbMCjz7eRHaeKC1lZVmILt1PTYTc++Krlj0KPo7164YasG
         WmYwopSyWQafEQHRixamaLKdppI9cmXQmJt8TrqY0/OW3CBEBXPsFL5BQrxlYcnsYSL/
         dtZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7z2bKREIOVJvwZyFM/kZlLdXmS1DLTqLbnmzG9J7ifU=;
        b=tJPJM/YaXu+yHDfN7gkbT4MHRDpWtQOvEIHESQ66twlxa3ES5kYNhTMQ0dfpAbmrVd
         4FV7l19QrcpwZFA+/N0WMx/m7IN+RySVkOkieVrqqKZM8WfaxBe/qonOyWOy+pdgfm/g
         91033H/1mlJeRqwtgTjC0WmK+8eIo6eOjFes37H+qXp5xE1aSr1d4NdscjvnL5keRdBX
         /EyDElzouzgPOfvvlyPwf1LTe01A7uCOP657uwjOHuMqxUUM2mXcn1mda/OdpmG81BMd
         rqGTctH5kgNyjUb8mOSsI/IXwns7h2/bwLcVLID5ea3HGffQwzotVwWGc9NP8HAHwopr
         tCAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7z2bKREIOVJvwZyFM/kZlLdXmS1DLTqLbnmzG9J7ifU=;
        b=Ew+771zh7655xhXFsLvX8qIplOdjOZyGlgIXnveIRtoGYFZKInX9tC/pVvmQkMO7j8
         ylI/nUmEz/oL8j5H8hbBX1bd1EORW0+cgXF6vs6oNKpTWNuVkKoBU9cfyxAd6pH3rxQ9
         26fBX845fXK/XoxsX7k33274l/NYkqLO+ShPYI9+6KdU0Oj+xQa30JKp18M0xkBy/c8D
         UBL7Mu2aBLbYUGpUhUIHSCuL6nmZJs1LbzevARwjCnhUG/QCDgES3xv0ZaiBobBPlvyD
         Hp18krSGB8QT6okwBG+J7izYQzGr33aW5FcUox70U9Wuo7IAKYiNW4puOk6K86KBkSof
         baZg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530fhNr7flm0pMjIkzGmDEQqUQIKGLizr+K+DHPP2ef8nRKacrVw
	62D6Azns1QLalawpp9FFq1M=
X-Google-Smtp-Source: ABdhPJxTfIL3uxT4cDH8hvho3xJ+LK8GifgArKuqmjurqYuqHNi8KRAAXWY/7WZKpY6+fbmD5hehhQ==
X-Received: by 2002:a37:8485:: with SMTP id g127mr41663881qkd.233.1608098720647;
        Tue, 15 Dec 2020 22:05:20 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5a53:: with SMTP id o19ls3972252qta.5.gmail; Tue, 15 Dec
 2020 22:05:20 -0800 (PST)
X-Received: by 2002:ac8:5514:: with SMTP id j20mr42634101qtq.387.1608098720107;
        Tue, 15 Dec 2020 22:05:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608098720; cv=none;
        d=google.com; s=arc-20160816;
        b=sY13RuiViEuNnCdqP043LCEdokFevhO+V8pUIqzgNQRUsP5iLU2h+pHD6SalIvywby
         d6cVBPnxAf+kvCE0acJ6zYsMIJcxsjjExX/WGguJkQ3NQrzGEWT0TNS3XW7E4GhrdQKm
         6UNWxa+gLSadktQjXYHKyXGoqy8hgVOF1fOHn/SB1PmH4rsnphmCNzSA/WJk+UNalEkk
         eBHNyKXvMKYA4+vXEiq5o4E7Vics0unGL9aXsB3+LudAd4lezdhkhwQiBrf3YFVHx2Ms
         rH1D/qv1qay5eqMllWddz1l/1G+D9AJJJcCkY9loF4ZODcu46CJgaBzYsZqzdHnvlQY4
         ovzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=yx0WcMid4Wk9ZEEt83LdyjNgN7v6TvFFtpYkwJaozIY=;
        b=oXA+MLI9QmY5uSjh0j5WbHFc+vD+OvH3KbRXGPm+nwpxs759Yj0OOWSMkiIMhTZI4D
         JTCOsuD22vh2UHB7KqozsFLwZGwRouq9rcfPmJKjs7Zi9peI1h1gOANRS6qHYj8Ixcd3
         eeq/MTN7YY+Qji1fxJSbNbY6P7jUcXOI48DH+Y5omzcrS/w5iZ49ojyUpXUvXx2MrbxR
         NjdeuMh4RIUXWSL3Ebkbt6g7PNRePgBu863fIodn3MJr2ium1blzfQMsJkOiLiwSYVA0
         xBMqi3/b9zwX3qYFH58Y8fgcd+DYj3zGKrCmRi0DMGXx/YWHCCHTN1Z/tnK5c6mm96Qu
         BDSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id f16si64305qkg.3.2020.12.15.22.05.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 22:05:19 -0800 (PST)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Cwl2b4NdQz15c8c;
	Wed, 16 Dec 2020 14:04:39 +0800 (CST)
Received: from [10.174.179.35] (10.174.179.35) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.498.0; Wed, 16 Dec 2020 14:05:08 +0800
Subject: Re: [RFC PATCH] scsi:libiscsi:Fix possible NULL dereference in
 iscsi_eh_cmd_timed_out
To: <open-iscsi@googlegroups.com>, Mike Christie
	<michael.christie@oracle.com>, <lduncan@suse.com>, <cleech@redhat.com>,
	<michaelc@cs.wisc.edu>, <linux-scsi@vger.kernel.org>
CC: <martin.petersen@oracle.com>, <jejb@linux.ibm.com>,
	<lutianxiong@huawei.com>, <linfeilong@huawei.com>,
	<liuzhiqiang26@huawei.com>, <haowenchao@huawei.com>
References: <1607935317-263599-1-git-send-email-wubo40@huawei.com>
 <d545b4b0-2c85-8e81-4f78-1d4c6a08c7dd@oracle.com>
From: Wu Bo <wubo40@huawei.com>
Message-ID: <56c13c25-3fc8-b684-4308-dec0dfbc40b3@huawei.com>
Date: Wed, 16 Dec 2020 14:05:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <d545b4b0-2c85-8e81-4f78-1d4c6a08c7dd@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.179.35]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On 2020/12/15 1:36, Mike Christie wrote:
> On 12/14/20 2:41 AM, Wu Bo wrote:
>> When testing kernel 4.18 version, NULL pointer dereference problem occurs
>> in iscsi_eh_cmd_timed_out function.
>>
>> I think this bug in the upstream is still exists.
>>
>> The analysis reasons are as follows:
>> 1)  For some reason, I/O command did not complete within
>>      the timeout period. The block layer timer works,
>>      call scsi_times_out() to handle I/O timeout logic.
>>      At the same time the command just completes.
>>
>> 2)  scsi_times_out() call iscsi_eh_cmd_timed_out()
>>      to processing timeout logic.  although there is an NULL judgment
>> 	for the task, the task has not been released yet now.
>>
>> 3)  iscsi_complete_task() call __iscsi_put_task(),
>>      The task reference count reaches zero, the conditions for free task
>>      is met, then iscsi_free_task () free the task,
>>      and let sc->SCp.ptr = NULL. After iscsi_eh_cmd_timed_out passes
>>      the task judgment check, there may be NULL dereference scenarios
>>      later.
>> 	
> 
> I have a patch for this I think. This is broken out of patchset I was
> trying to fixup the back lock usage for offload drivers, so I have only
> compile tested it.
> 
> There is another issue where the for lun reset cleanup we could race. The
> comments mention suspending the rx side, but we only do that for session level
> cleaup.
>  > The basic idea is we don't want to add more frwd lock uses in the 
completion
> patch like in your patch. In these non perf paths, like the tmf/timeout case
> we can just take a ref to the cmd so it's not freed from under us.
> 

You are right, add more frwd lock does affect performance in the completion.

> 
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index f9314f1..f07f8c1 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -573,18 +573,9 @@ void iscsi_complete_scsi_task(struct iscsi_task *task,
>   static void fail_scsi_task(struct iscsi_task *task, int err)
>   {
>   	struct iscsi_conn *conn = task->conn;
> -	struct scsi_cmnd *sc;
> +	struct scsi_cmnd *sc = task->sc;
>   	int state;
>   
> -	/*
> -	 * if a command completes and we get a successful tmf response
> -	 * we will hit this because the scsi eh abort code does not take
> -	 * a ref to the task.
> -	 */
> -	sc = task->sc;
> -	if (!sc)
> -		return;
> -
>   	if (task->state == ISCSI_TASK_PENDING) {
>   		/*
>   		 * cmd never made it to the xmit thread, so we should not count
> @@ -1855,26 +1846,34 @@ static int iscsi_exec_task_mgmt_fn(struct iscsi_conn *conn,
>   }
>   
>   /*
> - * Fail commands. session lock held and recv side suspended and xmit
> - * thread flushed
> + * Fail commands. session frwd lock held and and xmit thread flushed.
>    */
>   static void fail_scsi_tasks(struct iscsi_conn *conn, u64 lun, int error)
>   {
> +	struct iscsi_session *session = conn->session;
>   	struct iscsi_task *task;
>   	int i;
>   
> -	for (i = 0; i < conn->session->cmds_max; i++) {
> -		task = conn->session->cmds[i];
> -		if (!task->sc || task->state == ISCSI_TASK_FREE)
> +	for (i = 0; i < session->cmds_max; i++) {
> +		spin_lock_bh(&session->back_lock);
> +		task = session->cmds[i];
> +		if (!task->sc || task->state == ISCSI_TASK_FREE) {
> +			spin_unlock_bh(&session->back_lock);
>   			continue;
> +		}
>   
> -		if (lun != -1 && lun != task->sc->device->lun)
> +		if (lun != -1 && lun != task->sc->device->lun) {
> +			spin_unlock_bh(&session->back_lock);
>   			continue;
> +		}
> +		__iscsi_get_task(task);
> +		spin_unlock_bh(&session->back_lock);
>   
> -		ISCSI_DBG_SESSION(conn->session,
> +		ISCSI_DBG_SESSION(session,
>   				  "failing sc %p itt 0x%x state %d\n",
>   				  task->sc, task->itt, task->state);
>   		fail_scsi_task(task, error);
> +		iscsi_put_task(task);
>   	}
>   }
>   
> @@ -1953,6 +1952,7 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
>   	ISCSI_DBG_EH(session, "scsi cmd %p timedout\n", sc);
>   
>   	spin_lock_bh(&session->frwd_lock);
> +	spin_lock(&session->back_lock);
>   	task = (struct iscsi_task *)sc->SCp.ptr;
>   	if (!task) {
>   		/*
> @@ -1960,8 +1960,11 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
>   		 * so let timeout code complete it now.
>   		 */
>   		rc = BLK_EH_DONE;
> +		spin_unlock(&session->back_lock);
>   		goto done;
>   	}
> +	__iscsi_get_task(task);
> +	spin_unlock(&session->back_lock);
>   
>   	if (session->state != ISCSI_STATE_LOGGED_IN) {
>   		/*
> @@ -2077,9 +2080,12 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
>   	rc = BLK_EH_RESET_TIMER;
>   
>   done:
> -	if (task)
> -		task->last_timeout = jiffies;
>   	spin_unlock_bh(&session->frwd_lock);
> +
> +	if (task) {
> +		task->last_timeout = jiffies;
> +		iscsi_put_task(task);
> +	}
>   	ISCSI_DBG_EH(session, "return %s\n", rc == BLK_EH_RESET_TIMER ?
>   		     "timer reset" : "shutdown or nh");
>   	return rc;
> @@ -2187,15 +2193,20 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
>   	conn->eh_abort_cnt++;
>   	age = session->age;
>   
> -	task = (struct iscsi_task *)sc->SCp.ptr;
> -	ISCSI_DBG_EH(session, "aborting [sc %p itt 0x%x]\n",
> -		     sc, task->itt);
> -
> -	/* task completed before time out */
> -	if (!task->sc) {
> +	spin_lock(&session->back_lock);
> +	task = (struct iscsi_task *)sc->SCp.ptr;	
> +	if (!task || !task->sc) {
> +		/* task completed before time out */
>   		ISCSI_DBG_EH(session, "sc completed while abort in progress\n");
> -		goto success;
> +
> +		spin_unlock(&session->back_lock);
> +		spin_unlock_bh(&session->frwd_lock);
> +		mutex_unlock(&session->eh_mutex);
> +		return SUCCESS;
>   	}
> +	ISCSI_DBG_EH(session, "aborting [sc %p itt 0x%x]\n", sc, task->itt);
> +	__iscsi_get_task(task);
> +	spin_unlock(&session->back_lock);
>   
>   	if (task->state == ISCSI_TASK_PENDING) {
>   		fail_scsi_task(task, DID_ABORT);
> @@ -2258,6 +2269,8 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
>   	ISCSI_DBG_EH(session, "abort success [sc %p itt 0x%x]\n",
>   		     sc, task->itt);
>   	mutex_unlock(&session->eh_mutex);
> +
> +	iscsi_put_task(task);
>   	return SUCCESS;
>   
>   failed:
> @@ -2266,6 +2279,8 @@ int iscsi_eh_abort(struct scsi_cmnd *sc)
>   	ISCSI_DBG_EH(session, "abort failed [sc %p itt 0x%x]\n", sc,
>   		     task ? task->itt : 0);
>   	mutex_unlock(&session->eh_mutex);
> +
> +	iscsi_put_task(task);
>   	return FAILED;
>   }
>   EXPORT_SYMBOL_GPL(iscsi_eh_abort);
> 

I have tested this patch, covering IO timeout and IO abort error 
handling scenarios, it is works well.

It is lgtm, Thanks

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/56c13c25-3fc8-b684-4308-dec0dfbc40b3%40huawei.com.
