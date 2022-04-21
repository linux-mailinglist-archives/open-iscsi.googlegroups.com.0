Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBXXLQWJQMGQEWNMMBLY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id F225050A3D9
	for <lists+open-iscsi@lfdr.de>; Thu, 21 Apr 2022 17:18:56 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id f11-20020a170902684b00b00158c67ef30csf2675697pln.7
        for <lists+open-iscsi@lfdr.de>; Thu, 21 Apr 2022 08:18:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650554335; cv=pass;
        d=google.com; s=arc-20160816;
        b=yD+uGwNFJwrHGq3VwgG2Z7vDyg9Rw9uEhnuTuVwWOh3d1upYc27oaP/0p44ePFbkT6
         VrssQ5ZppYgWPmJcXTLVtjMUK+2Mrk0bqMQN5mDJ2vM9NkJxIXJNsqhGbcX+A3yIc1oh
         B3npx0iYNwm+zZ4YzpR6Xokv1cskhwWZsCERYhURGLbAtJN2fKa2FtSG1O/6E3M8zJ95
         bqrVYeELidwNGXOOPDM+JXHjO/wp4KeBoCIKT/yJLEW5Rdb1PJh1yWtHYKSlNLeNsQ90
         ibcE5ndX/m6y0Gb3lbbzYW0CsUf5RrJ20w7qdqDfmLs+2QawLxNQTcxiqMPPOvWOd1Xy
         ra+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=rftXA3eTYWE/ZimxIDibJ9jA7rzkyKQWTAP3PBG6YF4=;
        b=ZY/CO3CtWFm6Apybpgcn94r/NR+V6qkKvMnSXnR8q3E2pIbsPsGiEK/DP74TJwI8rq
         d25/MJ+1fhxux+0iJmTfbOUmF48UizL3z/ItEkYP21FwFNpm047PV9tJ0MRHJPouuJE6
         S6egVnWJV3kHY9R0ECBQ/PzI6zTVBseBUr2AV1uUQJ0vzsduDJVGbOan9AWGB9qPb2/J
         Rvf0PFZB/tjgfRQa2huvtkkYpo1pp9EA88qcPF5l7k7jusKRpULzIoeoiviYlcNFpQZW
         1e5OrOloY1Zs9zTQSpJWnW9mBHgOBtA/Tn7VSt/1q+WSwa85FRbGaxN/jWcsdpW/4azR
         EwjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rftXA3eTYWE/ZimxIDibJ9jA7rzkyKQWTAP3PBG6YF4=;
        b=nnqZtnFxYB85uBEmY/LNimG23orMb1963C/ulbB9C2CnV1onabVFqEIYJZbAZgJsVx
         go2L2eoSLsm+Wb4kjnNLh4+jbWZPVkBuYxEq7hT4Lw3FO6Z1WgY1c/KIZyrImCy69J6l
         6hDmZmmK2Gn7WWB80zmO6ZjZ7TttqvYgSvTPaHdBwKQlc6MVLNmgUbO2bvcNc7hAZMPV
         jE9WzXbnIGrmWrtnPexfez2xUtdnOOzuzEzR2SNCsGSvfxBRheePbGawcEwGxk4DCX9+
         wBIfpqNteHqjyVoxWu3OKRgFVmSIv1TSmTzk+hFQHvvDksoywbg6Y341Xk1+NVV7zOZF
         i6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rftXA3eTYWE/ZimxIDibJ9jA7rzkyKQWTAP3PBG6YF4=;
        b=QXk/070dtrZ7TMTSuBtk+04CU8a7rxSh9RNiOOCxo4AYOBDBrFiWUItDXAl4+EL8HE
         H3v13dv420kJi4UDyRtOcvKJTU3Ifa3ztG4eLLWaqWQW+CUmhk9nyM7UDSLZXvKaqlZl
         r3IkQGuZ8l6OOZJDUOhlayZYO+UaOrdUqnE0VNTwtfYONAbfXkxZ0UIR5r8Xb870Jrzn
         5zvvnCrMqpTT/fm+R5HfpzsrDtfB4cKeBdBQVBtj0oCigI46mQDFEnpAuy9kLh3Zbi63
         rh10xxp+ULHU4CovIFIfFkbLtnoDDGfMxZEmwi3sdXrcSTsQEp96aQYvDpu4bf7LN7/8
         e1ww==
X-Gm-Message-State: AOAM532JlfmSrPbJ5Vq2pcUFpIjBu3gH5I4mgyEtszq+TSUUr7sQqTvQ
	Es2Q+ehJKUyGk60clyjrbcg=
X-Google-Smtp-Source: ABdhPJwvYQEtTrtSgFRIpahk9wzzNXul1lY5qSs3vCmrre1VQfMGbxFQNwlUycAQLS6QYcGGdFiiuQ==
X-Received: by 2002:a17:90b:3c12:b0:1cb:70ef:240a with SMTP id pb18-20020a17090b3c1200b001cb70ef240amr124820pjb.217.1650554335557;
        Thu, 21 Apr 2022 08:18:55 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:44:0:b0:39d:7d11:6551 with SMTP id 65-20020a630044000000b0039d7d116551ls2850542pga.5.gmail;
 Thu, 21 Apr 2022 08:18:53 -0700 (PDT)
X-Received: by 2002:a05:6a00:d4f:b0:50a:3ea9:64fc with SMTP id n15-20020a056a000d4f00b0050a3ea964fcmr29247993pfv.41.1650554333562;
        Thu, 21 Apr 2022 08:18:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650554333; cv=none;
        d=google.com; s=arc-20160816;
        b=PQee5NoflAvJCSLzt3NU/PzGNV271H26ehomFIlstO3KFzf8pqcKBl752ygtt4Fgn2
         gthBtjKYnu6ESPj8bUaI++CxNGdfOwHGf9qSSYZl4k5N+i15mLk4NWtErF3LhYAgLUe7
         /+muej9tBaKF+WZFWzbHBLmLViSuGJdaSADU1tiFRkAFKmdr3G8jTYFeCMZQ+PlD61oA
         ZQaCt1Zn3xKT6j7j3/XvJlPvUR7Yu1AZuUOSCZmk8kdQOrgZqcFZI4a9+81SYWuW9ky4
         Sa0Rvayj3+rxSwOtmTXiS1YlzoYwVCtPv4WbasZdST3Dt10Pe9L1G1Q0CK2ghBLdGVPt
         cbxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=7unXkXIa234QbizmADCuorEwLANQ+aQPkoCC5pFayjg=;
        b=G8W+vFyfCMM6tt/Dy6WGqX9Dt92V5vukKu7AQtqRkSoTtDBdQQ1gYOw9Pj/WyonQX5
         7W31QSu0QspUecjzCc+lAAe6qnPRMOzf+ARxAaKVPeZSP9dfarwEbsE562cYWPNYZjhC
         2XOi277p39L2sp67jnExvyYZVlPFJCJ1Tr2TpKcXcqYclmR0lyuIbRUV8pIquJyXhQiY
         cur9sgC1Sd36leVvN3zRQw1bfwaTAlXRc1ciNj2LLeKDO2k7Fcp6ZvOPjFLIdsiB/rc/
         zlqBxLISujZB7/D0D/zE14h8G5nViNliKbcf4bqA39BLUpowmYzNtfz3JGlH424ykBwa
         rfng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id hk1-20020a17090b224100b001c69d267568si404818pjb.0.2022.04.21.08.18.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Apr 2022 08:18:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.55])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Kkh4h2c9RzhXw6;
	Thu, 21 Apr 2022 23:18:12 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Thu, 21 Apr 2022 23:18:19 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Thu, 21 Apr 2022 23:18:19 +0800
Message-ID: <b61cd444-ff43-4b4a-20f7-033800d1b48a@huawei.com>
Date: Thu, 21 Apr 2022 23:18:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2] scsi: iscsi: Fix multiple iscsi session unbind event
 sent to userspace
Content-Language: en-US
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <linfeilong@huawei.com>
References: <20220418000627.474784-1-haowenchao@huawei.com>
 <938bca13-2dcc-24c0-51b5-26f7e7238776@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
In-Reply-To: <938bca13-2dcc-24c0-51b5-26f7e7238776@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500017.china.huawei.com (7.185.36.178)
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.187 as
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

On 2022/4/21 0:28, Mike Christie wrote:
> On 4/17/22 7:06 PM, Wenchao Hao wrote:
>> I found an issue that kernel would send ISCSI_KEVENT_UNBIND_SESSION
>> for multiple times which should be fixed.
>>
>> This patch introduce target_unbound in iscsi_cls_session to make
>> sure session would send only one ISCSI_KEVENT_UNBIND_SESSION.
>>
>> But this would break issue fixed in commit 13e60d3ba287 ("scsi: iscsi:
>> Report unbind session event when the target has been removed"). The issue
>> is iscsid died for any reason after it send unbind session to kernel, once
>> iscsid restart again, it loss kernel's ISCSI_KEVENT_UNBIND_SESSION event.
>>
>> Now kernel think iscsi_cls_session has already sent an
>> ISCSI_KEVENT_UNBIND_SESSION event and would not send it any more. Which
>> would cause userspace unable to logout. Actually the session is in
>> invalid state(it's target_id is INVALID), iscsid should not sync this
>> session in it's restart.
>>
>> So we need to check session's target unbound state during iscsid restart,
>> if session is in unbound state, do not sync this session and perform
>> session teardown. It's reasonable because once a session is unbound, we
>> can not recover it any more(mainly because it's target id is INVALID)
>>
>> Changes from V1:
>> - Using target_unbound rather than state to indicate session has been
>>   unbound
>>
>> Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
>> ---
>>  drivers/scsi/scsi_transport_iscsi.c | 21 +++++++++++++++++++++
>>  include/scsi/scsi_transport_iscsi.h |  1 +
>>  2 files changed, 22 insertions(+)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>> index 2c0dd64159b0..43ba31e595b4 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -1958,6 +1958,14 @@ static void __iscsi_unbind_session(struct work_struct *work)
>>  
>>  	ISCSI_DBG_TRANS_SESSION(session, "Unbinding session\n");
>>  
>> +	spin_lock_irqsave(&session->lock, flags);
>> +	if (session->target_unbound) {
>> +		spin_unlock_irqrestore(&session->lock, flags);
>> +		return;
>> +	}
>> +	session->target_unbound = 1;
> 
> Shoot, sorry, I think I gave you a bad review comment when I said we
> could do a bool or state kind or variable.
> 
> If we set unbound here and iscsid was restarting at this point then
> iscsid really only knows the target removal process is starting up. It
> doesn't know that the target is not yet removed. We could be doing sync
> caches and/or still tearing down scsi_devices/LUNs.
> 
> For the comments I gave you on the userspace PR parts, would it be
> easier if this was a state type of value? Above you would set it to
> REMOVING. When scsi_remove_target is done then we can set it to
> REMOVED. That combined with the session and conn states we can detect
> how far we got in the session removal process if iscsid dies in the
> middle of it.
> 
> What do you think?
> 

I thought about setting this bool to true after ISCSI_KEVENT_UNBIND_SESSION has
been sent in __iscsi_unbind_session(), it's not a good way too, the sync session
and unbind target would run concurrency.

If we need make sure iscsid call in session_conn_shutdown() after kernel's
scsi_remove_target() has finished, we must make it a state type.

We need think about how to set the initial value of this state. Since we only
cares about the removing state, the easiest way is setting it to INITED when allocing
session. When iscsid restart and found it's INITED, still sync this session.

Based on your REMOVING and REMOVED state, state is set to REMOVING at beginning
of __iscsi_unbind_session() and set to REMOVED after scsi_remove_target() done.
When iscsid restart and found this state is REMOVING, it do nothing, just waiting
for ISCSI_KEVENT_UNBIND_SESSION event. If the state is REMOVED, it should start
shutting down(both check session and conn state as you mentioned in my PR).

> 
>> +	spin_unlock_irqrestore(&session->lock, flags);
>> +
>>  	/* Prevent new scans and make sure scanning is not in progress */
>>  	mutex_lock(&ihost->mutex);
>>  	spin_lock_irqsave(&session->lock, flags)
> 
> ...
> 
>> diff --git a/include/scsi/scsi_transport_iscsi.h b/include/scsi/scsi_transport_iscsi.h
>> index 9acb8422f680..877632c25e56 100644
>> --- a/include/scsi/scsi_transport_iscsi.h
>> +++ b/include/scsi/scsi_transport_iscsi.h
>> @@ -256,6 +256,7 @@ struct iscsi_cls_session {
>>  	struct workqueue_struct *workq;
>>  
>>  	unsigned int target_id;
>> +	int target_unbound;   /* make sure unbind session only once */
> 
> 
> We don't need the comment since the code using this is so simple
> and the name of the variable tells us what it's for.
> 
> 
>>  	bool ida_used;
>>  
>>  	/*
> 
> .

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/b61cd444-ff43-4b4a-20f7-033800d1b48a%40huawei.com.
