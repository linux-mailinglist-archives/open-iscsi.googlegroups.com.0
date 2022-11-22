Return-Path: <open-iscsi+bncBC6MFJWO34DBBE7I6GNQMGQENHKIMTQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 5201C63359B
	for <lists+open-iscsi@lfdr.de>; Tue, 22 Nov 2022 08:02:45 +0100 (CET)
Received: by mail-ej1-x637.google.com with SMTP id qf25-20020a1709077f1900b0078c02a23da3sf7592467ejc.0
        for <lists+open-iscsi@lfdr.de>; Mon, 21 Nov 2022 23:02:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669100565; cv=pass;
        d=google.com; s=arc-20160816;
        b=zgtxeMOb+R9YErdF3wt9HBosO++VP/pD3i5Pu9r3i4f9GekUNeUz5nf+o2UzlxI+qn
         czaZsNQr1dAS1QwMVpveE9bEnw+ThFCHcGyk0+PPF4rHfmdwu4BhtfewmUZA16ubhncH
         EbkPUknmhpWOY5omKO/7lFvs637y6UxWjo9ru/d3yP5sNhjxQGxwpNvNARLDQjG6bToh
         uGc83Ssyug78Kttrfdod5oWLSOLPkVgvURyw9zfbyajq8f6My8wb/Z6JPgxpz8yV+mZy
         5OIy8L7VRrJDnUCeIK6+eMPffcGW2QymWZlnEIZzLXl7wzL61bj0QZ7oBeQYdItVQGz9
         /xCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:cc:to:from:date
         :message-id:sender:dkim-signature;
        bh=Sev2LDRZoqIKUYUFZFm9p5wrw0FM24Gtq0n7MwQDGew=;
        b=u+36eUqnAKaNPLjbdbYN+5bEtNsU9yN1o3pbHzpXqnrfBGDLNSMD5gAmbCyiZBAvfw
         dTMUyI52E0HJSurAFoyAMmPBYm+IukkfCqcE9CvpsYI8LeGdz9d0v5eOgAwMdYUCsVB/
         8u1iHOAIuOKU/rLueE89GxH0f1WxcUqEh9slQlrvnA6kJcTC6B4zAxeJiDjR8CRaVsxH
         mQd4Izx28huKjlgecJtN+rnRB/g41ghd89tpjA5a4UsuAM4vYTOFY1d48j/ToNBu3eAE
         Xfm+Kqq/L4Qa3ONRln5ot51oIP80+wx8eg8horbCo1Bh/5bhrPvhVj4ShzHlgGnM8w0i
         NDKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:cc
         :to:from:date:message-id:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sev2LDRZoqIKUYUFZFm9p5wrw0FM24Gtq0n7MwQDGew=;
        b=ExKXtgH7k7XqM7sdoSTf/LbFAjxKZbI/4z7e33NfKn0lYO+eOOw++3toTkel4uV1p9
         0rYANxQC7BDafOxpUXtIRjFpmK04y+pFyykmawQeOZXLwU7wWeyno2Yg7B/uIkWeUHuo
         cDJ8huD8BCyPEpxf6woNeUzz/u7VjkBi09qxoCqF0GDYEw6Dt9sZ6DwgdJvv7T8YCtqR
         jhI5yoiaXYZF49Zs9u77bM+OIP+dz76Qd4hyJGWTdAWCnJZZcmaybABOUjQkHVaKm1T9
         k4sjZUfrKxFWYKHRr80GksnpEHhjutKxEOB+DCOVAlGKhSAsCnINEW1QtYDB8ZvTTnCN
         B0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sev2LDRZoqIKUYUFZFm9p5wrw0FM24Gtq0n7MwQDGew=;
        b=gOCf+8Bmtc/68IeGJ5mN27HcvjE3wnT5jrZmrx34Ic1HGOTDPO0A2e/stSzclZM05M
         d44J3wSO/VEBE8V8smz2TT0rS3etC9hbh/zJPQ6dRfRB/HiIZzSDwnY1Ujs3yj0c0k08
         U6VN9sTS7Wx+hZnJA+1QwHML+huQn/5Oi0wHNJQF2v6ogS4y+JzwwcPOT7XqcRyyFige
         t6aLWu+LyIiNDXaSqLeFSgX0D6xH+UdxQSVFmG7yt5iVZ5L7PZ9r15R+su9lomKGLwBA
         EHM+BKp14XXNG1mPk//anAQF+Uc6q2AlUah1O8JfWQxo1zPVMCJzRTPSJP8vGHLf+DP4
         wdpw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnbRY6bDHyEIY0vN9VERaZzKfDsp+Zs+08hG030vkxWwb6qG2Px
	h8KyZKy/VbQPLerRRu2LIPw=
X-Google-Smtp-Source: AA0mqf5ZJSQdIYVruDDcU6uUzpqcg6j+EwZ/UQgv8TxjtIqOZCwIKnVo0nNEiONTtvchfZfspwYBfQ==
X-Received: by 2002:a17:906:abd7:b0:7ae:b9fb:ce07 with SMTP id kq23-20020a170906abd700b007aeb9fbce07mr17769884ejb.575.1669100564963;
        Mon, 21 Nov 2022 23:02:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6402:34c6:b0:43d:b3c4:cd21 with SMTP id
 w6-20020a05640234c600b0043db3c4cd21ls11711197edc.2.-pod-prod-gmail; Mon, 21
 Nov 2022 23:02:42 -0800 (PST)
X-Received: by 2002:a05:6402:449b:b0:459:2b41:3922 with SMTP id er27-20020a056402449b00b004592b413922mr12700531edb.160.1669100562367;
        Mon, 21 Nov 2022 23:02:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669100562; cv=none;
        d=google.com; s=arc-20160816;
        b=pfn2iUFhguYIl3l97vN84kqEdDDH1a+xwlWDs4wP34t3O9jaMxJ4Ae577j2Ed0OmZz
         DXBH5LxcaAU2CvqeltYenOrrpumeCCDQMer6cx2EK2onLY05zcWOYp/eJjLWYeyylWXn
         gwCNwzxbvIbOQmwNzlorqFMlQwWt5WrRDUiG6Bg+OQAQgrkTtb87mI8qEw1eiP4QVCHn
         WQa/FQkFZjZXEcTTCYBdxB/92y5Sbq1Ih4IiNcZXR374ZUDUrN2uTRYnJ/sK4WsFzk2t
         n+pWQi6qpwo6WARGqMZbNC3CGXa8cYS2YoXfEOn67yzD2U7stbfNcnSj8l2SNCBImnLi
         1nGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=cp1Ac/l34cEtceUO2BHi1pBdR7T6GlY6Zf2I6Kx4qwc=;
        b=0D3yTUXfQKZNRcoN9VXUiMKKUnRh6PcUd61NLd9P8y7gU1YdC4KsMdS6tZsffj9eCs
         0sxPSY/vnvzXbKdIDsmSv50r7kAMKPWReGRj7rhUPzyQoxpxNsv8w8EiwDGiui1knWXE
         7PW4LCCJCG9WKetFbUZSPvYp6AJ6hHbh/+uKWnpapdr2aPBCUopm7q59/eX7RDOMpBbj
         yrgnfUxykjj4N0DWJ1sBZLpEaeYjkDp6nuJcmRapBO5SQbVBgi+iYVKF8pkYpb1kX2P+
         TJTSOFHqiD7S5ueaGuK8Wg2AZBG0+r1XzSNY5VgqVC+EhWPO1icYxAv1jJGD7pta4lqa
         JQ3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx1.uni-regensburg.de (mx1.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf7])
        by gmr-mx.google.com with ESMTPS id ay14-20020a056402202e00b0045bcf2bacbasi461180edb.2.2022.11.21.23.02.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Nov 2022 23:02:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf7 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf7;
Received: from mx1.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 7BCDA600004D
	for <open-iscsi@googlegroups.com>; Tue, 22 Nov 2022 08:02:41 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx1.uni-regensburg.de (Postfix) with ESMTP id 18DB26000049
	for <open-iscsi@googlegroups.com>; Tue, 22 Nov 2022 08:02:41 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Tue, 22 Nov 2022 08:02:41 +0100
Message-Id: <637C740F020000A10004FEA6@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.1
Date: Tue, 22 Nov 2022 08:02:39 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>,<jejb@linux.ibm.com>,
 <martin.petersen@oracle.com>, <michael.christie@oracle.com>,
 "Chris Leech" <cleech@redhat.com>, "Lee Duncan" <lduncan@suse.com>
Cc: <linfeilong@huawei.com>,<linux-kernel@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>
Subject: Antw: [EXT] Re: [PATCH v6] scsi:iscsi: Fix multiple iscsi
 session unbind event sent to userspace
References: <20221108014414.3510940-1-haowenchao@huawei.com>
 <ad54a5dc-b18f-e0e6-4391-1214e5729562@oracle.com>
 <89692b2b-90f7-e8e8-fa77-f14dbe996b72@huawei.com>
In-Reply-To: <89692b2b-90f7-e8e8-fa77-f14dbe996b72@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf7 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com> schrieb am
21.11.2022 um 15:17 in Nachricht
<89692b2b-90f7-e8e8-fa77-f14dbe996b72@huawei.com>:
> On 2022/11/9 11:47, Mike Christie wrote:
>> On 11/7/22 7:44 PM, Wenchao Hao wrote:
>>> I found an issue that kernel would send ISCSI_KEVENT_UNBIND_SESSION
>>> for multiple times which should be fixed.
>>>  
>>> +static char *iscsi_session_target_state_names[] = {
>>> +	"UNBOUND",
>>> +	"ALLOCATED",
>>> +	"SCANNED",
>>> +	"UNBINDING",
>>> +};
>> 
>> I think maybe Lee meant you to do something like:
>> 
>> static int iscsi_target_state_to_name[] = {
>> 	[ISCSI_SESSION_TARGET_UNBOUND] = "UNBOUND",
>> 	[ISCSI_SESSION_TARGET_ALLOCATED] = "ALLOCATED",
>> 	.....
>> 
>> 
> 
> Define array as following and remove previous helper function:
> 
> static char *iscsi_session_target_state_name[] = {
>        [ISCSI_SESSION_TARGET_UNBOUND]   = "UNBOUND",
>        [ISCSI_SESSION_TARGET_ALLOCATED] = "ALLOCATED",
>        [ISCSI_SESSION_TARGET_SCANNED]   = "SCANNED",
>        [ISCSI_SESSION_TARGET_UNBINDING] = "UNBINDING",
> };
> 
> Reference the array directly:

Actually I think with a modern optimizing compiler there should be little difference in the code created.

> 
> static ssize_t
> show_priv_session_target_state(struct device *dev, struct device_attribute 
> *attr,
>                        char *buf)
> {
>        struct iscsi_cls_session *session = iscsi_dev_to_session(dev->parent);
>        return sysfs_emit(buf, "%s\n",
>                        
> iscsi_session_target_state_name[session->target_state]);
> }
> 
>>> +	spin_lock_irqsave(&session->lock, flags);
>>> +	if (session->target_state == ISCSI_SESSION_TARGET_ALLOCATED) {
>>> +		spin_unlock_irqrestore(&session->lock, flags);
>>> +		if (session->ida_used)
>>> +			ida_free(&iscsi_sess_ida, session->target_id);
>>> +		ISCSI_DBG_TRANS_SESSION(session, "Donot unbind sesison: allocated\n");
>> 
>> Could you change the error message to "Skipping target unbinding: Session 
> not yet scanned.\n"
>> 
>>> +		goto unbind_session_exit;
>>> +	}
>> 
>> Just add a newline/return here.
> 
> Actually we should skip unbind this session if call into 
> __iscsi_unbind_session() with target state
> is ALLOCATED. So I removed the check, and check only one condition in 
> __iscsi_unbind_session(): if the
> target state is SCANNED.
> 
>> 
>> I think you want to move both state checks to after the we take the host 
> lock and
>> session lock after the line above. You don't have to take the lock multiple 
> times
>> and we can drop the target_id == ISCSI_MAX_TARGET since it would then rely 
> on the
>> state checks (I left out the ISCSI_DBG_TRANS_SESSION because I'm lazy):
>> 
>> 	bool remove_target = false;
>> .....
>> 
>> 
> I think it's not necessary to add a flag remove_target, here is my changes 
> for function __iscsi_unbind_session:
> 
> @@ -1966,23 +1977,28 @@ static void __iscsi_unbind_session(struct 
> work_struct *work)
>         /* Prevent new scans and make sure scanning is not in progress */
>         mutex_lock(&ihost->mutex);
>         spin_lock_irqsave(&session->lock, flags);
> -       if (session->target_id == ISCSI_MAX_TARGET) {
> +       if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
>                 spin_unlock_irqrestore(&session->lock, flags);
>                 mutex_unlock(&ihost->mutex);
> -               goto unbind_session_exit;
> +               ISCSI_DBG_TRANS_SESSION(session, "Skipping target unbinding: 
> Session is %s.\n",
> +                                       
> iscsi_session_target_state_name[session->target_state]);
> +               return;
>         }
> -
>         target_id = session->target_id;
>         session->target_id = ISCSI_MAX_TARGET;
> +       session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
>         spin_unlock_irqrestore(&session->lock, flags);
>         mutex_unlock(&ihost->mutex);
>  
>         scsi_remove_target(&session->dev);
>  
> +       spin_lock_irqsave(&session->lock, flags);
> +       session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
> +       spin_unlock_irqrestore(&session->lock, flags);
> +
>         if (session->ida_used)
>                 ida_free(&iscsi_sess_ida, target_id);
>  
> -unbind_session_exit:
>         iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
>         ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
>  }
> 
> And the function looks like following after change:
> 
> static void __iscsi_unbind_session(struct work_struct *work)
> {
> 	struct iscsi_cls_session *session =
> 			container_of(work, struct iscsi_cls_session,
> 				     unbind_work);
> 	struct Scsi_Host *shost = iscsi_session_to_shost(session);
> 	struct iscsi_cls_host *ihost = shost->shost_data;
> 	unsigned long flags;
> 	unsigned int target_id;
> 
> 	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
> 
> 	/* Prevent new scans and make sure scanning is not in progress */
> 	mutex_lock(&ihost->mutex);
> 	spin_lock_irqsave(&session->lock, flags);
> 	if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
> 		spin_unlock_irqrestore(&session->lock, flags);
> 		mutex_unlock(&ihost->mutex);
> 		ISCSI_DBG_TRANS_SESSION(session, "Skipping target unbinding: Session is 
> %s.\n",
> 					iscsi_session_target_state_name[session->target_state]);
> 		return;
> 	}
> 	target_id = session->target_id;
> 	session->target_id = ISCSI_MAX_TARGET;
> 	session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
> 	spin_unlock_irqrestore(&session->lock, flags);
> 	mutex_unlock(&ihost->mutex);
> 
> 	scsi_remove_target(&session->dev);
> 
> 	spin_lock_irqsave(&session->lock, flags);
> 	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
> 	spin_unlock_irqrestore(&session->lock, flags);
> 
> 	if (session->ida_used)
> 		ida_free(&iscsi_sess_ida, target_id);
> 
> 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
> 	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
> }
> 
> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/89692b2b-90f7-e8e8-fa77-f14dbe99 
> 6b72%40huawei.com.



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/637C740F020000A10004FEA6%40gwsmtp.uni-regensburg.de.
