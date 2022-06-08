Return-Path: <open-iscsi+bncBAABBV5QRCKQMGQENC24UJY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C7A545163
	for <lists+open-iscsi@lfdr.de>; Thu,  9 Jun 2022 17:57:13 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id kc24-20020a056214411800b0046d93b71e48sf814297qvb.3
        for <lists+open-iscsi@lfdr.de>; Thu, 09 Jun 2022 08:57:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654790232; cv=pass;
        d=google.com; s=arc-20160816;
        b=wFlW3/wsWtvHLq+1QQJgrOKjmCwpNPwVZT03GBOY1GyUZAPenO9/wJExDrDzNmoGlk
         p3gZvloGfO1sbPkHOr8NSfzqBDsuaxu8rsZ0EDMYhNui9Ud1OqLv2j6NGXYwLc1dSRP1
         l6Upi9gyeWTT6SN8+S7F//02wtsScNQhrCHwKI07nux9XCfZNGM0eH+auvtJDbIkfQbB
         BM9K3GJE4qJ77UTGaUaRpb/iyD3BnzKYmyRv3szuILeOPS6Z34NVyIL6p0BCIj/v4yYO
         s6C7vs2Pex3k7vfYKRVdzRIvWspULHoBzsC7G0NrKyTLiRn4aoCtCzCYGuAoCEkF0LIL
         w8Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=yc7ere8CZAU6Uw9f4zO/kv+NeN4YRPo00Exxdij7oVs=;
        b=ci6YS2byai9BNIYxyCqejs81malcy/uUL+KZt4ygnMWuVg8fWnQI6CywHnzAC6Cu5D
         kJTHYBrm1rtJd/lY54ljSsLNIaPdM9R0zb2oFGH0XU6I8KDv2eiXfrpqSKmY6fA/A8hm
         HXxAs1M7SyNUc/WL7oos4k9TFIHkt2+zHQvhOsgY/pE1CVBLjo56WwCkJjf8fXIT99ou
         wa+k5ZQfndTsMEyHYDVjW/17qFPL8crMo18t6TyhapQ1p7SFUNoOxloDLGP4v/A3oCeu
         sjIJNczWsr/JKNEHjN6esdX97mAdOpMM71weAV3B8J4jLyFvOjyYB9X0PUFhKVciEkvt
         fPhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=LRxsVnkb;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yc7ere8CZAU6Uw9f4zO/kv+NeN4YRPo00Exxdij7oVs=;
        b=L8y+/PJf7Yjha3xh+tKzk5Vog0j0NSucJZubxXQRywW7xfAn/vs+N/qMV21S0gpmgz
         ObPec0zsH4isFzebVxUpu6W6ao7GtbxXzO4bC40mwlywmmkYnJYtiV9MF8E0uYBDkdSw
         3mz0rdqQKAwY+O8Afmq4to4vkAk8K4lMlA+AA+KY7BD5/bKt48YwmU20jIep+rxRMJXr
         PIUbzHxWpLvYUBz6X5pKCUy/EjlQjdBLW/TU7iAFXyrPSD3BItCSBa2n5q0JbmkzD9ed
         ea+0hETR+P9frfxg3g746eHPGE9xd8pk3saJha+q64NQbNFtW3xmcZ1ibKpMY0DWaNly
         eEvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yc7ere8CZAU6Uw9f4zO/kv+NeN4YRPo00Exxdij7oVs=;
        b=CX2FNVWWMJ+gVlTKMAyDD/2mHPcSScnmJtx1IDGs6JzUD0vgBImhXXQr+nZtvRTk4Z
         jMJD4rmMXCXUL5Kwd8rOLPNy718HRnT+64DznzkxR/RyE5RI58wVUSVG1fqWO8blWfja
         NJfGqtNUAfTQf1M7UZDMDPB1W070Onquwh07kOoj7I1ZFHhjE0Xh2G76CGRIanqOP+jU
         q2XmC2/BYMVAwmA65OB+VWPVij/MTUPzO8nN72GZnIZK0tDxquq1oZhyE4KqA5uZcd3S
         P3g0nINnSqU4QnsWgqAti8rLf2sJz32ANayJmQC4ogAS6Yhexggab7EnaKhm8xMKKfTR
         pxxQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530l+F6mO7gnsi4s95nz64RNvqPnBZPcn+A0XBFRx92jvsSB4wrc
	wnzCjduzvYoPFoX7uIb1gp0=
X-Google-Smtp-Source: ABdhPJx6x6i5WkVEtyfxTN62LeiFfi8LnTsN2iLMr/Yusre3xMEhSxZjf+gA45T9C5vbfQ7HMudUxQ==
X-Received: by 2002:a05:620a:27c2:b0:6a7:1db:a6e2 with SMTP id i2-20020a05620a27c200b006a701dba6e2mr6302512qkp.150.1654790232445;
        Thu, 09 Jun 2022 08:57:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:1a19:b0:305:189:130b with SMTP id
 f25-20020a05622a1a1900b003050189130bls3235830qtb.7.gmail; Thu, 09 Jun 2022
 08:57:11 -0700 (PDT)
X-Received: by 2002:a05:622a:104c:b0:2fc:4d41:386 with SMTP id f12-20020a05622a104c00b002fc4d410386mr32641451qte.293.1654790231288;
        Thu, 09 Jun 2022 08:57:11 -0700 (PDT)
Received: by 2002:a37:aac3:0:b0:6a6:c4d6:384a with SMTP id af79cd13be357-6a6fee36f64ms85a;
        Wed, 8 Jun 2022 07:16:47 -0700 (PDT)
X-Received: by 2002:a17:906:d550:b0:704:7ba6:9854 with SMTP id cr16-20020a170906d55000b007047ba69854mr31175906ejc.579.1654697806774;
        Wed, 08 Jun 2022 07:16:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654697806; cv=none;
        d=google.com; s=arc-20160816;
        b=xCk+It0G7RxvEvXxbfB8hZI2KQNzVv/t47ETnz+Hlkn+TZXdFYuK0fSnHyMQLbxaaw
         QDWCuvaAKyteta5NocaxM551Sc4lUyZcQ+HcBaIj+JNAf0/GhlM3IIKRZo/I2MVcwXkF
         D4i+ZYVc3eRbZHyHXxDm7ZKJ1PG5yKIn3jAy0Xfw+6fyT03cAxAJaLK6cNMkSgsxFcJ+
         iCyYgXwS3mlZ+nBIsekW6QlQ56Dm44lemhEOwpsgGSflZrORZTYML7RyOpUc2ZLqDLpu
         lT+Y9W6ZdMzVN26089VkFihpIzWF6YoH5g0a9JH7Pg14X1Y105MiiwNbsLC5+GHVyTmz
         y2tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=RSlwQpEqCXhbZZ9ImsVUexNsLzWcERQTmbLCHIGg1/k=;
        b=QeAdl1cRtJHBMA6Sz7pPJTDMVdA/QcCLOCkF6ibPj8/QeUMTZaiYaLk4CY8ah9SFBc
         T8bRvhIbtB6OiN3CGTjaoelwWG8+KwROtv0mU9hQnc6AbsA8mOT8702lLQrcHPjcELnb
         dZoY9eXAY9z6QphU2deM4XPUjj2+bBDldg+LgyhJCrEet7w9zgmGDXlzrz6AyuwGi5dO
         G/AnXXpB/SM+8x97CZ1cDTqGEFs/98KX2r6h3AG7iWyPC/TLfCRmFFEMrrZJ5xxU6lhv
         /uMDYKQxP0ibDHEJgsqs/QWRvMbx+XOHJ7WukJ25CUnfABwShCM+R2EZ3ipqMgPZMCVR
         JR/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yadro.com header.s=mta-01 header.b=LRxsVnkb;
       spf=pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=yadro.com
Received: from mta-01.yadro.com (mta-02.yadro.com. [89.207.88.252])
        by gmr-mx.google.com with ESMTPS id e41-20020a056402332900b0042b8a96e45asi841581eda.1.2022.06.08.07.16.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jun 2022 07:16:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as permitted sender) client-ip=89.207.88.252;
Received: from localhost (unknown [127.0.0.1])
	by mta-01.yadro.com (Postfix) with ESMTP id 2DB234249F;
	Wed,  8 Jun 2022 14:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
	by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yD-QAnHORcPL; Wed,  8 Jun 2022 17:16:44 +0300 (MSK)
Received: from T-EXCH-01.corp.yadro.com (t-exch-01.corp.yadro.com [172.17.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mta-01.yadro.com (Postfix) with ESMTPS id 5038D424A1;
	Wed,  8 Jun 2022 17:16:42 +0300 (MSK)
Received: from T-EXCH-08.corp.yadro.com (172.17.11.58) by
 T-EXCH-01.corp.yadro.com (172.17.10.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Wed, 8 Jun 2022 17:16:42 +0300
Received: from T-EXCH-09.corp.yadro.com (172.17.11.59) by
 T-EXCH-08.corp.yadro.com (172.17.11.58) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 8 Jun 2022 17:16:41 +0300
Received: from T-EXCH-09.corp.yadro.com ([fe80::d9f:e165:8a50:d450]) by
 T-EXCH-09.corp.yadro.com ([fe80::d9f:e165:8a50:d450%4]) with mapi id
 15.02.0986.022; Wed, 8 Jun 2022 17:16:41 +0300
From: Dmitriy Bogdanov <d.bogdanov@yadro.com>
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>
CC: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	"linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>, "linux@yadro.com"
	<linux@yadro.com>, Konstantin Shelekhin <k.shelekhin@yadro.com>
Subject: RE: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Thread-Topic: [PATCH] scsi: iscsi: prefer xmit of DataOut before new cmd
Thread-Index: AQHYenFLnkgrMqHdCEim3M4HDVs6OK1D5uuAgAAC6wCAAXQf4A==
Date: Wed, 8 Jun 2022 14:16:41 +0000
Message-ID: <e5c2ab5b4de8428495efe85865980133@yadro.com>
References: <20220607131953.11584-1-d.bogdanov@yadro.com>
 <769c3acb-b515-7fd8-2450-4b6206436fde@oracle.com>
 <6a58acb4-e29e-e8c7-d85c-fe474670dad7@oracle.com>
In-Reply-To: <6a58acb4-e29e-e8c7-d85c-fe474670dad7@oracle.com>
Accept-Language: ru-RU, en-US
Content-Language: ru-RU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.199.18.20]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: d.bogdanov@yadro.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yadro.com header.s=mta-01 header.b=LRxsVnkb;       spf=pass
 (google.com: domain of d.bogdanov@yadro.com designates 89.207.88.252 as
 permitted sender) smtp.mailfrom=d.bogdanov@yadro.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=yadro.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Hi Mike,

>On 6/7/22 10:55 AM, Mike Christie wrote:
>> On 6/7/22 8:19 AM, Dmitry Bogdanov wrote:
>>> In function iscsi_data_xmit (TX worker) there is walking through the
>>> queue of new SCSI commands that is replenished in parallell. And only
>>> after that queue got emptied the function will start sending pending
>>> DataOut PDUs. That lead to DataOut timer time out on target side and
>>> to connection reinstatment.
>>>
>>> This patch swaps walking through the new commands queue and the pending
>>> DataOut queue. To make a preference to ongoing commands over new ones.
>>>
>>
>> ...
>>
>>>              task = list_entry(conn->cmdqueue.next, struct iscsi_task,
>>> @@ -1594,28 +1616,10 @@ static int iscsi_data_xmit(struct iscsi_conn *conn)
>>>               */
>>>              if (!list_empty(&conn->mgmtqueue))
>>>                      goto check_mgmt;
>>> +            if (!list_empty(&conn->requeue))
>>> +                    goto check_requeue;
>>
>>
>>
>> Hey, I've been posting a similar patch:
>>
>> https://www.spinics.net/lists/linux-scsi/msg156939.html
>>
>> A problem I hit is a possible pref regression so I tried to allow
>> us to start up a burst of cmds in parallel. It's pretty simple where
>> we allow up to a queue's worth of cmds to start. It doesn't try to
>> check that all cmds are from the same queue or anything fancy to try
>> and keep the code simple. Mostly just assuming users might try to bunch
>> cmds together during submission or they might hit the queue plugging
>> code.
>>
>> What do you think?
>
>Oh yeah, what about a modparam batch_limit? It's between 0 and cmd_per_lun.
>0 would check after every transmission like above.

 Did you really face with a perf regression? I could not imagine how it is
possible.
DataOut PDU contains a data too, so a throughput performance cannot be
decreased by sending DataOut PDUs.

 The only thing is a latency performance. But that is not an easy question.
IMHO, a system should strive to reduce a maximum value of the latency almost
without impacting of a minimum value (prefer current commands) instead of
to reduce a minimum value of the latency to the detriment of maximum value
(prefer new commands).

 Any preference of new commands over current ones looks like an io scheduler
functionality, but on underlying layer, so to say a BUS layer.
I think is a matter of future investigation/development.

BR,
 Dmitry

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e5c2ab5b4de8428495efe85865980133%40yadro.com.
