Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBHWZ7CNQMGQEGCNI7PQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EEE63618A
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 15:22:27 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id bj1-20020a05620a190100b006fa12a05188sf22507910qkb.4
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 06:22:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669213345; cv=pass;
        d=google.com; s=arc-20160816;
        b=zEMU88yPRuClMWrzE8scpSR7VYK89cDrWfSKXcj3EC5nOdflUeYqe5aL3m1TPNJzIq
         RpDY6HZTuYk3IyECsuhS5D0d/3LosqJ+xOu3g40p1fLemhMRI4Gt/3H/K+7MMnDE9hbp
         6wqiLMIhZoKsjXGsRU54THPFNGtMS3HVWtjCFZZpzgvxPdrRPNjSQoNj9mQXmoPw5Bi9
         nAtO7909dTiswc+9zYeAih31q4bzOiMpYZm2aOHBfFFVthAXJu/ODI1/cEK+u6qGgnqL
         Vm6meU53eOWwGRMm7b7Rt/HEnvknfVH2fmJSi+FC5Gko1gupbinr4nGMU7Kq7At9jUuh
         QW/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=O4/mTo1+FCtox5oKXjHo+i5PbzG9Eq9NPuYmmLcAfVA=;
        b=1KYsmiEc3RF/Jj1dkDcymWnRv/pj7zqHUqUWzlWa9ot0bPRuwZbX6ZYh5kgOIVD/iq
         Bsj2r46MIprCY/31fADrIaxwQ0b/Lk+bbGSEYGqH5vkleDR9sBJEMMdnSVN3WIH2RHEq
         1Rlaglvk4Wr0rHpI4Vj8uTLYwOPQASLjXQUztzlqTbs7+XdE33NNOA5YNTTm/3L2QKGB
         q/p8RczRlgwga8dsAw3Jg4LqTW+Fj32NCjhIfnnjREiPXg0SXO0zbl0yvRDQj7gR5Lkm
         p2OYEm2R8SHR27R3yf4hIdzjsVqXHeFhERZ1sbget0VANEWwELLe7gNuqXp5Mf7NILNZ
         YWXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O4/mTo1+FCtox5oKXjHo+i5PbzG9Eq9NPuYmmLcAfVA=;
        b=L0VN8MCHWV/KZcICTyF78ScBpNSBjTp9jRMcE5Py0P87MaTvtMg5pmZt+D1+LD++LQ
         ueDEAD22LOD0UOtINdlXoqrTylubvwr+hf64XXZCpb7ki41rlYskV95itXyobSTEXqh5
         C3McvmdAmx5DnrJK6h5DocBIfr5jFDbWt8jU/C36/OW0LQXTntR2Zzr16y3t573iXb3N
         XzzAQCEApbOAV5B2XHeMKXjL009dWj7lbOB7sZith9f0+eeIct9L7FvGkLvygG5Ow+HJ
         2GmaZ4wucBIWvYCBNWSISt/rHBSVYZXQoIsXlozFCCt6exk5g4t/FlydXv4G858/qEBf
         iLPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=O4/mTo1+FCtox5oKXjHo+i5PbzG9Eq9NPuYmmLcAfVA=;
        b=PB6ziYW5y4Tnh0zHPP2+UUk8VRTH9gbw60wunlKxlrhI+V94w7VMvizFHpYoPCn8ab
         mgagHdqWwsd7q7ebvwz4Yh8czKti7hsVNEpHDna5zLusSzvjRfnv0NOMe97nFm2P+DfJ
         3cmlciu1LLcLHNiYFuPMPY09bQh6UnLTHU3KXFwzBFYLzezlyzaAkh0sOIaRLtxOSA1l
         hoz3Kie/BPHwO+H7NloUhX2kCvJeKOpnWTDvjfiw41KeCj1gQhTIZCqPe9JmSlmlELJr
         UHBajmU6FJcJ/dDJpbRrGknUo1NHP6jht5fwDi0WUMxHMRz5eg940GGWW6iSTCvP9FYL
         /5rA==
X-Gm-Message-State: ANoB5pn+118/qVLUDyEEjwu7+e1VqePy0XGZkZPPQWpRdvh2g5oUghrQ
	+QKDIC4NK+IEJ0BJEZ4PKLc=
X-Google-Smtp-Source: AA0mqf7tbV01ADam60u9pg7mj5cWRlvZoZcegXUpcT0DJty3fb6gkeyyiFH829egcJ2er+/PtqFWMg==
X-Received: by 2002:ac8:5308:0:b0:3a5:2fd3:7d8d with SMTP id t8-20020ac85308000000b003a52fd37d8dmr26148149qtn.427.1669213344148;
        Wed, 23 Nov 2022 06:22:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:13fc:b0:6ee:d08f:aa7 with SMTP id
 h28-20020a05620a13fc00b006eed08f0aa7ls12180103qkl.0.-pod-prod-gmail; Wed, 23
 Nov 2022 06:22:22 -0800 (PST)
X-Received: by 2002:a05:620a:488a:b0:6f1:187c:8f79 with SMTP id ea10-20020a05620a488a00b006f1187c8f79mr24735485qkb.593.1669213342288;
        Wed, 23 Nov 2022 06:22:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669213342; cv=none;
        d=google.com; s=arc-20160816;
        b=WPRcrGLREYXT+0dZjZ88UrvjeIdkeP/9lKVn9Rh3Vsu8yhfNFz1N9LIZMiCC68mufu
         nkoPRDv+P1VZsIq82qUlMhMJ1+0Ta143Bzg/3B5wQ/fYezaJJyXSHnfJBzv4BxavFzrl
         8je+gjGKZf+DUMHzbAGn+ei0iQiMlzPXAosI9kJ1xeZrK7dKaRc7kH3GZyXTNt8jmltP
         1QgITOko3JJ1mJX8v6vq9YZ/OIPRTjNOv3jfy28PwEY9za416s6OBaTvRWKBQcuIubh1
         0NAJPlPhX1amDEak2sZuezcrrTSWaw48eWPvBXDNyBbW42QeMaZJS/YLeohXqXlD8P1s
         xFDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=itczqEKeYfeU1zyI2jwORcTIaxoeI6mAebA98Q+wgm4=;
        b=PaUBWq7Va8i+o/XEX9Jwu4ZZHpbnP1m/L+AR5tI3h5+fceOTWUb/LS6GWxMjm11lzW
         dyn9yF63SeS4NLg8mBEsJ2b2NL4QLpUR1s5VjezMsSANaYKobeiYdYVhnxvhM/VBbpxg
         vOk/t+/JLnd+4VLIXMM8VITqaV5aPyjnj4tbtfwJp1w0sLnpWsq+QsVucqfqPDuXHzx0
         bEMD4VMmBjlSlNvschMWfZj85E35E8hLKVPRRlHRqcXQ/ctePAokOipMv9CycGxfy4+u
         AtCO57HGWDwryfxpzV8KvneNdQBZU3RcHRRPz8BznGO8c/3hrQz1XrnCq8+IN8nOstS1
         JR0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id r13-20020ac85e8d000000b003a4f2725cd1si816353qtx.4.2022.11.23.06.22.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Nov 2022 06:22:22 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggpemm500021.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NHNbD276FzHw6Z;
	Wed, 23 Nov 2022 22:21:12 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500021.china.huawei.com (7.185.36.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 22:21:49 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 22:21:48 +0800
Message-ID: <3a2ba8f0-3a86-36cf-cafd-969298594830@huawei.com>
Date: Wed, 23 Nov 2022 22:21:47 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v6] scsi:iscsi: Fix multiple iscsi session unbind event
 sent to userspace
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>, Wenchao Hao
	<haowenchao22@gmail.com>
CC: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "Martin K
 . Petersen" <martin.petersen@oracle.com>, "James E . J . Bottomley"
	<jejb@linux.ibm.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linfeilong@huawei.com>
References: <20221108014414.3510940-1-haowenchao@huawei.com>
 <ad54a5dc-b18f-e0e6-4391-1214e5729562@oracle.com>
 <89692b2b-90f7-e8e8-fa77-f14dbe996b72@huawei.com>
 <418c7f6f-0bc3-45bb-2abf-e866df6f4b62@oracle.com>
 <CAOptpSO6=sUPUwgj1og8088djiNA=Bw9um0p024L=0Gb=-ja5w@mail.gmail.com>
 <856ccad2-19a4-32b4-b41f-5a230a55ee30@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <856ccad2-19a4-32b4-b41f-5a230a55ee30@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggpeml500005.china.huawei.com (7.185.36.59) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.188 as
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

On 2022/11/23 2:15, Mike Christie wrote:
> On 11/22/22 11:29 AM, Wenchao Hao wrote:
>> On Wed, Nov 23, 2022 at 1:04 AM Mike Christie
>> <michael.christie@oracle.com> wrote:
>>>
>>> On 11/21/22 8:17 AM, Wenchao Hao wrote:
>>>> And the function looks like following after change:
>>>>
>>>> static void __iscsi_unbind_session(struct work_struct *work)
>>>> {
>>>>       struct iscsi_cls_session *session =
>>>>                       container_of(work, struct iscsi_cls_session,
>>>>                                    unbind_work);
>>>>       struct Scsi_Host *shost = iscsi_session_to_shost(session);
>>>>       struct iscsi_cls_host *ihost = shost->shost_data;
>>>>       unsigned long flags;
>>>>       unsigned int target_id;
>>>>
>>>>       ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
>>>>
>>>>       /* Prevent new scans and make sure scanning is not in progress */
>>>>       mutex_lock(&ihost->mutex);
>>>>       spin_lock_irqsave(&session->lock, flags);
>>>>       if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
>>>
>>> What was the reason for not checking for ALLOCATED and freeing the ida
>>> in that case?
>>>
>>
>> target_state would be in "ALLOCATED" state if iscsid died after add
>> session successfully.
>> When iscsid restarted, if the session's target_state is "ALLOCATED",
>> it should scan
>> the session and the target_state would switch to "SCANNED".
>>
>> So I think we would not call in __iscsi_unbind_session() with
>> session's target_state
>> is ALLOCATED.
> 
> Makes sense for the normal case.
> 
> The only issue is when __iscsi_unbind_session is called via
> iscsi_remove_session for the cases where userspace didn't do
> the  UNBIND event. Some tools don't do unbind or open-iscsi
> sometimes doesn't if the session is down. We will leak the ida,
> so you need some code to handle that.
> 
> .

Sorry, I did not take this condition in consideration. I would change
the __iscsi_unbind_session as following:

1. do not check if target_id is ISCSI_MAX_TARGET
2. define remove_target and default set to true, if target_state is ALLOCATED, then set
   it to false and continue the unbind flow; else if target_state not SCANNED, just return.
3. set target_state to ISCSI_SESSION_TARGET_UNBOUND after is sent to avoid potential race condition.

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index cd3db9684e52..9264c75ad9ea 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1960,31 +1960,40 @@ static void __iscsi_unbind_session(struct work_struct *work)
        struct iscsi_cls_host *ihost = shost->shost_data;
        unsigned long flags;
        unsigned int target_id;
+       bool remove_target = true;
 
        ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
 
        /* Prevent new scans and make sure scanning is not in progress */
        mutex_lock(&ihost->mutex);
        spin_lock_irqsave(&session->lock, flags);
-       if (session->target_id == ISCSI_MAX_TARGET) {
+       if (session->target_state == ISCSI_SESSION_TARGET_ALLOCATED) {
+               remove_target = false;
+       } else if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
                spin_unlock_irqrestore(&session->lock, flags);
                mutex_unlock(&ihost->mutex);
-               goto unbind_session_exit;
+               ISCSI_DBG_TRANS_SESSION(session, "Skipping target unbinding: Session is unbound/unbinding.\n");
+               return;
        }
 
+       session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
        target_id = session->target_id;
        session->target_id = ISCSI_MAX_TARGET;
        spin_unlock_irqrestore(&session->lock, flags);
        mutex_unlock(&ihost->mutex);
 
-       scsi_remove_target(&session->dev);
+       if (remove_target)
+               scsi_remove_target(&session->dev);
 
        if (session->ida_used)
                ida_free(&iscsi_sess_ida, target_id);
 
-unbind_session_exit:
        iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
        ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");
+
+       spin_lock_irqsave(&session->lock, flags);
+       session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
+       spin_unlock_irqrestore(&session->lock, flags);
 }

And the function would be:

static void __iscsi_unbind_session(struct work_struct *work)
{
	struct iscsi_cls_session *session =
			container_of(work, struct iscsi_cls_session,
				     unbind_work);
	struct Scsi_Host *shost = iscsi_session_to_shost(session);
	struct iscsi_cls_host *ihost = shost->shost_data;
	unsigned long flags;
	unsigned int target_id;
	bool remove_target = true;

	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");

	/* Prevent new scans and make sure scanning is not in progress */
	mutex_lock(&ihost->mutex);
	spin_lock_irqsave(&session->lock, flags);
	if (session->target_state == ISCSI_SESSION_TARGET_ALLOCATED) {
		remove_target = false;
	} else if (session->target_state != ISCSI_SESSION_TARGET_SCANNED) {
		spin_unlock_irqrestore(&session->lock, flags);
		mutex_unlock(&ihost->mutex);
		ISCSI_DBG_TRANS_SESSION(session, "Skipping target unbinding: Session is unbound/unbinding.\n");
		return;
	}

	session->target_state = ISCSI_SESSION_TARGET_UNBINDING;
	target_id = session->target_id;
	session->target_id = ISCSI_MAX_TARGET;
	spin_unlock_irqrestore(&session->lock, flags);
	mutex_unlock(&ihost->mutex);

	if (remove_target)
		scsi_remove_target(&session->dev);

	if (session->ida_used)
		ida_free(&iscsi_sess_ida, target_id);

	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
	ISCSI_DBG_TRANS_SESSION(session, "Completed target removal\n");

	spin_lock_irqsave(&session->lock, flags);
	session->target_state = ISCSI_SESSION_TARGET_UNBOUND;
	spin_unlock_irqrestore(&session->lock, flags);
}

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/3a2ba8f0-3a86-36cf-cafd-969298594830%40huawei.com.
