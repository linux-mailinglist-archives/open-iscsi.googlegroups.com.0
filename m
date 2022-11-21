Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBFUR52NQMGQEX4AN52Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C03F632567
	for <lists+open-iscsi@lfdr.de>; Mon, 21 Nov 2022 15:18:01 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id n12-20020a170902e54c00b00188515e81a6sf9547424plf.23
        for <lists+open-iscsi@lfdr.de>; Mon, 21 Nov 2022 06:18:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669040280; cv=pass;
        d=google.com; s=arc-20160816;
        b=lCaXbwt2pR6Y88inEn8fJcqQ4087RmDUcrSgPcGe+geKMWCNJWkt2mVHAhV6CkTnik
         Q/1Y1c7t+4yrsk67eIBrGoF3JZjZbj6VACpEPUtLngYemYQ0+cFBJyHqEsRe6Dnc0D6a
         /qDJ5RuOBuEFc6fAJiFu5DqACP0UM6y5nG0FcknSjiOoAYL+hvtQoB7/XRQGSIdYtWHt
         +wu4EV7p33AuGUwMfEwNNGHCWOmoCAKa44PIP6hv5iYZr4r8PUF4Eiel0OVjGIn8/R/F
         46+sHJZIDi7XFECaxQJRtD0WNPH2W/XRO4T670SOWt6MUkSlX+IHNUZAb8er1ha9KHQl
         A1mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=PfPmUdQ+r8FOGT3vmEDpV7Ehr2Fp1rvJIwKylX/BVG4=;
        b=AgE9P+7QeL2euFcAcgbcyJjNIrCuNc5hutd5V1oOJCC/OinpbFsAC4GJKRdQKtiOJO
         PEe8t/FOjvXchKV9LZNIpUmg3koaYPVGUn9VZKkNf0StPnB1rhwiaJPYPpo2tUSmS+ub
         Wzgpp4Kg+6SdC5BVa5Wd9oFC2vhAEwrAakMuHNfqcbNM4Ghyd18UeRueOOiQRtzVCSYT
         D9wLNwl8DMQmqM9LeCbLn+te9tO6QwmaYTIcPyRbEK96B+hHp86rtrExKp4dqqlTzb3n
         ZkIR2ZDRHxwvB1awwmJX0ykDexihi/pKT4c7q7KKWhp092oSnBGn72hqgBJPf0GxZKJZ
         AFow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PfPmUdQ+r8FOGT3vmEDpV7Ehr2Fp1rvJIwKylX/BVG4=;
        b=pGbyAWyW9N1K7vMD8YoByU43VhfBkEhM2i+/WTax8fXsu9ocjgxOZuxowATWA8rcxJ
         LqAfGmvEbEH23uDnPn2RFWiicSb3beW8OCt/G2eNC7a8VsjQ5WTRLouBGQjmMNCba4qn
         X0V2PZrBStX1V5GfObsJFBAVBBKgQC0YAx6OeKJVlOy3kgQY3tk/OPonn5dW3UtWV4kp
         0dPu7V94P31b219r8X8jqSnZ9KZN1iNfuMWQa2BC/suO29B33GNOmaJN5SFzk5Qp71Rk
         go8uih7NYOkfQojEqrM74ehn4H5NZCo5VYWRxq7pUOIEd5ZXh0fXF6tnZJ0e1cCxIaLL
         8iEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PfPmUdQ+r8FOGT3vmEDpV7Ehr2Fp1rvJIwKylX/BVG4=;
        b=JDv7KMD2IxYJQM9q22uGxSsSOnQPapxXEWOYWgYQwHUQq7QhFeEBgtF5iHSNlSyHge
         K1sHCdZQY30aEH6KX2wUbYTbjx7DKtkfLj9pcut6+QOiCttxL38xxxUxzv+HTd98S6rj
         g71cgRGXFF47pNLS8LqVlQLAHiYFnJOdUSQwhhBs8xVvwBMiDsXnrTawAfLpZGWB8D9Q
         PwGN3luzJR2em2YO5YM7aWetYcRX/MHnY5ep7NfaecAaUMl8AXer6wlS27qE64Z5bYOa
         5VydS44SMuJVUK7DS7Y35O2ZbRtd22epFwg4T6Tn1bPeZ9G7gj/e6OslU0DDufFXqQJ6
         upLw==
X-Gm-Message-State: ANoB5pmOlurZRaVe3lQBux0bkke4gfoossehhQq0MshEmPQc+1dSRbDe
	Q1qjSChrSzWRqay1vUnYKdY=
X-Google-Smtp-Source: AA0mqf7InqfN5cR71apffYshNjgxhuX8bS/bJlxO/PBSB7M0/U3+/ag0bk5cEYNrPSQwWjr4Z+I4Cg==
X-Received: by 2002:a63:1607:0:b0:457:a1d3:48c3 with SMTP id w7-20020a631607000000b00457a1d348c3mr17733331pgl.465.1669040279887;
        Mon, 21 Nov 2022 06:17:59 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:1d50:0:b0:477:6271:966b with SMTP id d16-20020a631d50000000b004776271966bls1904969pgm.10.-pod-prod-gmail;
 Mon, 21 Nov 2022 06:17:57 -0800 (PST)
X-Received: by 2002:a63:e54b:0:b0:46f:8e45:8da1 with SMTP id z11-20020a63e54b000000b0046f8e458da1mr396388pgj.71.1669040277671;
        Mon, 21 Nov 2022 06:17:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669040277; cv=none;
        d=google.com; s=arc-20160816;
        b=TFguPfDNm807apQD7NxgoyVMGVhnw8vYMQcsrHO09tz6NGxnQK6Nd/RTkK07/TF1Lp
         z3ngRMeVStJ7MI9CNJELJaIFECq/HbZhLqh6Ko0WdtT2eGzDQCFtjfCu2+rpxLoR8vub
         M2t9v6dQBbOdAaK88TKy91rZYHWc+hqU/hCzcISYv6TA1srg3hkFfQV6aglErPnywgN+
         3hrF2dL5/GsrHqxrsLtwFhAUEdYj23n5qXGPoQj71S+ThP1EfTUQd7ypvDahAhSCU2dc
         9eqEswxm0n2C/IGHH3IQcrJfE7aF40B9w8QToD4HIQLXVxAojkXStYWXM9CW1mKdc9Rx
         06DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=ZkK7y6SEdCJOzz95HW6FP6E4bdTcrTtgHjpJLTrMOEE=;
        b=bQv1DH74kl1hS5hViWLwe6ScRn1wAohR+mK4kVT9ioefXjE/2TY9pweJsWRbFS3DGI
         pMl9jsKP+ZjIdx2ipeSM2Ce+OF0z8Wc1hoVyfapSHHLbmdSN8dPLFeldpubIs5eRxD1+
         x6GtydIdJOqcsVAzB7ylSAmY/AfrB70zpEK5H1mWnolpZ2lpiwYzst1xtXXPljp1ZTW/
         1dAu48adUDW5rJC8LxgJ+7Ca3MdA52J3Up8g2Nhs8dcv6bCTb2zVLFbLQskYOsCTrnrX
         emo/Y10nJPRZO8RvfWnQN+JBL2ntkdYNLPKuLxqRptYk1q0Rg1G5UApK23C8PcboA+4E
         2bBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id z64-20020a626543000000b0056d189fd322si432395pfb.2.2022.11.21.06.17.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Nov 2022 06:17:57 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.55])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4NG8bD1WLkz15Mnk;
	Mon, 21 Nov 2022 22:16:56 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 22:17:24 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 22:17:23 +0800
Message-ID: <89692b2b-90f7-e8e8-fa77-f14dbe996b72@huawei.com>
Date: Mon, 21 Nov 2022 22:17:23 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v6] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, "James E . J . Bottomley" <jejb@linux.ibm.com>
CC: <open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linfeilong@huawei.com>
References: <20221108014414.3510940-1-haowenchao@huawei.com>
 <ad54a5dc-b18f-e0e6-4391-1214e5729562@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <ad54a5dc-b18f-e0e6-4391-1214e5729562@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggpeml500006.china.huawei.com (7.185.36.76) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Wenchao Hao <haowenchao@huawei.com>
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

On 2022/11/9 11:47, Mike Christie wrote:
> On 11/7/22 7:44 PM, Wenchao Hao wrote:
>> I found an issue that kernel would send ISCSI_KEVENT_UNBIND_SESSION
>> for multiple times which should be fixed.
>>  
>> +static char *iscsi_session_target_state_names[] = {
>> +	"UNBOUND",
>> +	"ALLOCATED",
>> +	"SCANNED",
>> +	"UNBINDING",
>> +};
> 
> I think maybe Lee meant you to do something like:
> 
> static int iscsi_target_state_to_name[] = {
> 	[ISCSI_SESSION_TARGET_UNBOUND] = "UNBOUND",
> 	[ISCSI_SESSION_TARGET_ALLOCATED] = "ALLOCATED",
> 	.....
> 
> 

Define array as following and remove previous helper function:

static char *iscsi_session_target_state_name[] = {
       [ISCSI_SESSION_TARGET_UNBOUND]   = "UNBOUND",
       [ISCSI_SESSION_TARGET_ALLOCATED] = "ALLOCATED",
       [ISCSI_SESSION_TARGET_SCANNED]   = "SCANNED",
       [ISCSI_SESSION_TARGET_UNBINDING] = "UNBINDING",
};

Reference the array directly:

static ssize_t
show_priv_session_target_state(struct device *dev, struct device_attribute *attr,
                       char *buf)
{
       struct iscsi_cls_session *session = iscsi_dev_to_session(dev->parent);
       return sysfs_emit(buf, "%s\n",
                       iscsi_session_target_state_name[session->target_state]);
}

>> +	spin_lock_irqsave(&session->lock, flags);
>> +	if (session->target_state == ISCSI_SESSION_TARGET_ALLOCATED) {
>> +		spin_unlock_irqrestore(&session->lock, flags);
>> +		if (session->ida_used)
>> +			ida_free(&iscsi_sess_ida, session->target_id);
>> +		ISCSI_DBG_TRANS_SESSION(session, "Donot unbind sesison: allocated\n");
> 
> Could you change the error message to "Skipping target unbinding: Session not yet scanned.\n"
> 
>> +		goto unbind_session_exit;
>> +	}
> 
> Just add a newline/return here.

Actually we should skip unbind this session if call into __iscsi_unbind_session() with target state
is ALLOCATED. So I removed the check, and check only one condition in __iscsi_unbind_session(): if the
target state is SCANNED.

> 
> I think you want to move both state checks to after the we take the host lock and
> session lock after the line above. You don't have to take the lock multiple times
> and we can drop the target_id == ISCSI_MAX_TARGET since it would then rely on the
> state checks (I left out the ISCSI_DBG_TRANS_SESSION because I'm lazy):
> 
> 	bool remove_target = false;
> .....
> 
> 
I think it's not necessary to add a flag remove_target, here is my changes for function __iscsi_unbind_session:

@@ -1966,23 +1977,28 @@ static void __iscsi_unbind_session(struct work_struct *work)
        /* Prevent new scans and make sure scanning is not in progress */
        mutex_lock(&ihost->mutex);
        spin_lock_irqsave(&session->lock, flags);
-       if (session->target_id == ISCSI_MAX_TARGET) {
+       if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
                spin_unlock_irqrestore(&session->lock, flags);
                mutex_unlock(&ihost->mutex);
-               goto unbind_session_exit;
+               ISCSI_DBG_TRANS_SESSION(session, "Skipping target unbinding: Session is %s.\n",
+                                       iscsi_session_target_state_name[session->target_state]);
+               return;
        }
-
        target_id = session->target_id;
        session->target_id = ISCSI_MAX_TARGET;
+       session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
        spin_unlock_irqrestore(&session->lock, flags);
        mutex_unlock(&ihost->mutex);
 
        scsi_remove_target(&session->dev);
 
+       spin_lock_irqsave(&session->lock, flags);
+       session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
+       spin_unlock_irqrestore(&session->lock, flags);
+
        if (session->ida_used)
                ida_free(&iscsi_sess_ida, target_id);
 
-unbind_session_exit:
        iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
        ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
 }

And the function looks like following after change:

static void __iscsi_unbind_session(struct work_struct *work)
{
	struct iscsi_cls_session *session =
			container_of(work, struct iscsi_cls_session,
				     unbind_work);
	struct Scsi_Host *shost = iscsi_session_to_shost(session);
	struct iscsi_cls_host *ihost = shost->shost_data;
	unsigned long flags;
	unsigned int target_id;

	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");

	/* Prevent new scans and make sure scanning is not in progress */
	mutex_lock(&ihost->mutex);
	spin_lock_irqsave(&session->lock, flags);
	if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
		spin_unlock_irqrestore(&session->lock, flags);
		mutex_unlock(&ihost->mutex);
		ISCSI_DBG_TRANS_SESSION(session, "Skipping target unbinding: Session is %s.\n",
					iscsi_session_target_state_name[session->target_state]);
		return;
	}
	target_id = session->target_id;
	session->target_id = ISCSI_MAX_TARGET;
	session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
	spin_unlock_irqrestore(&session->lock, flags);
	mutex_unlock(&ihost->mutex);

	scsi_remove_target(&session->dev);

	spin_lock_irqsave(&session->lock, flags);
	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
	spin_unlock_irqrestore(&session->lock, flags);

	if (session->ida_used)
		ida_free(&iscsi_sess_ida, target_id);

	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
}



-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/89692b2b-90f7-e8e8-fa77-f14dbe996b72%40huawei.com.
