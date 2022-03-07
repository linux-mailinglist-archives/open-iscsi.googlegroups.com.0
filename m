Return-Path: <open-iscsi+bncBDRZ7N5GYAFBBUHFS6IQMGQEJTX2TQQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A3D4CFD78
	for <lists+open-iscsi@lfdr.de>; Mon,  7 Mar 2022 12:56:03 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id v1-20020a25fc01000000b006289a83ed20sf13245935ybd.7
        for <lists+open-iscsi@lfdr.de>; Mon, 07 Mar 2022 03:56:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646654162; cv=pass;
        d=google.com; s=arc-20160816;
        b=FuA9XuE3p6N+83YLu+MC4e4ZimUQnNBZ2Wn0z90q+kkMVgzHs/mK3LqVkn6snGYUNs
         gxoSBG/gdpR9o+5hymQSa4TBhkihHibcpAPVxf892z4yAZFa5BU3R+uNu8UqDh08H+Wq
         cM0ft7d41EgkdxwzQ08uVTrcaASzARHaroVOSYac+BcFWHAHM6JVGOadt29rYWH6RA3t
         4qdl35tGo5xzFRPYKdClbeJLth5bBGhhv3IK37TlTLgc/B5WqGozCCO1WXLVGwgAWwNH
         yMp2Q5Ug9ENrBIswFJyXIHO8jwWVVWOGYw89ReE4Dpdzk6W8RaHOkNUg+k/5NbDb59g3
         0QHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=b89jpmdQ77W12vyO0bmH++PYEENJMbJyXIzfBOcOv7U=;
        b=bAdb6e72W8TF+Csok5GD6jQkeMc53S4jGOfmoHOQXapNVJUj7O6THsoKyfH2PT5zXy
         EM/VbK6gQvhxM7K3jkW03TANKPdFr3fOn1FO56kP/MoJ64IU2avqXNO6QjK1Ej4KL0sd
         6yIL7VF/pID4ECazjST0jnURx2s7j+EMoEQaNbpCCqkg/+QcHA8y4incK4XMO5ZNYy9D
         sIIEE+nKHkMxaXkhNl5SyHSTpIkypoRXeParIs1uqsE7VpB2DVh8B5+C++EdzUoi5OrW
         vjBZbY981lk45ATmWV9AWJBsUHHXJFEgkDI53BSaNKhRRs0ykjp4+ss8gEsY8XRuE41r
         bSVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=b89jpmdQ77W12vyO0bmH++PYEENJMbJyXIzfBOcOv7U=;
        b=jhJsHiy9EStQn0detBzf+d7C6NsnNLsmyQAn5L9/L+zASz064EB3eXPX5VbJDuP6jo
         m9EAiqoyWzGCw46N8KY9IHmKdI/ORoDpModx7OTJPKLJ04CBV3BYdYvp29E0pInh4sPX
         55BYzCNCvB6bqyYCvMWA1/qR1i99tzTh/p77jvbrxOatW5xUKwKXKC9bueYmAO979J/P
         rtuG3vs/qhHRAzvU0C2yE9fw9QZn4CLMDFpNWolPelMXqqqB1bQUmW3GXOnO/OB8Csi8
         4FsieO/ULn5us1WxhJ1ko9TPi0Wnhdj1mHecsNGac4+GFHdLUlpJTToD7VsS00jiJyot
         YztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b89jpmdQ77W12vyO0bmH++PYEENJMbJyXIzfBOcOv7U=;
        b=urrR6kwRj6wVoapLH961WvPuaJdaH5z9PMNs42laLH/kqlLnu3tKwYvL5OU+apW2gO
         4kJTTzDTOjq4XRnyFOuAEwfV/s8yXF3un/oOVe8kkgh506poHBOJ5QEiJ02P3u5do5jv
         sF4/aW0Bcscb1gbkqOlht/e4K/Sj2wGIRiCNC4PYFbmecUEPfwsU/iBd9RGuhVx49ad8
         pkbCCQWp2AoKhDUoUH7wAvGnXkujuM1J6Ia1Uv+FtsifrTU+xSixANicqNjL8W7WPgyX
         COydoZmLAQohTKKmh6Ve9dVZMj+fv/fTENBg4B7VVUf4wMdK9Gkjta6BLYhNQQq4RuKx
         szZQ==
X-Gm-Message-State: AOAM530vTEtSk6wzMHPCgsSgvMkZ94Vk3DCGJdgczy40D6sRU5KRcx9K
	J0RM95dvrdqBs0PCCIvmgM0=
X-Google-Smtp-Source: ABdhPJyHHCqlhsw0UsUVPdAC+RNUhm6fGaUXvRvu6WBJVF2Hz3NH3MVbkCwF4fENeXiI7ERpQD7GwQ==
X-Received: by 2002:a25:8004:0:b0:628:9e93:7c9a with SMTP id m4-20020a258004000000b006289e937c9amr7704561ybk.353.1646654162191;
        Mon, 07 Mar 2022 03:56:02 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0d:ea13:0:b0:2dc:b21:c2d0 with SMTP id t19-20020a0dea13000000b002dc0b21c2d0ls5949743ywe.7.gmail;
 Mon, 07 Mar 2022 03:56:00 -0800 (PST)
X-Received: by 2002:a81:72d7:0:b0:2db:fc83:4b74 with SMTP id n206-20020a8172d7000000b002dbfc834b74mr7997843ywc.158.1646654160251;
        Mon, 07 Mar 2022 03:56:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646654160; cv=none;
        d=google.com; s=arc-20160816;
        b=G6LMev68AE/dLkNalpqgjbRICLHay4X/WHyfgGcQ2z+nDumniHdGhmq4b4euFek75y
         IW4ROanyOZUkcfduNPXxSI5cY6yWI3OmVgPsXOMiy+vb/tpQKY05eadD2Biv1YXB8cyL
         4w2sDF22bfo3ixS5Sp3yGimgbBnKJUZS3nvVdnQEnuSeeIcK83RO196PaH30TCj6M0tU
         B6F/ky+GeXURvGqaI3xlVhF6FBL0CfpgcQr3XmqA9l+OOZekoKGftrp3L3rFA5CTxuMg
         gST3qXrwR8TxZChw7aVgSw6PQYkL7YLrqoJfJsQ21TBS8YzwHTSTIpWbsR0mouKux4OR
         KmmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=rTv1OK3pcVOMqz2au39t/YJtsuT0g7fbkB9OluMCE48=;
        b=ClwXfPJHzfux0G1Gm3fduSt1cbFHZEpqWnkm3Lw/t0wtzO5ti3H4K8OymnHgBBMlRs
         YNBEVTatuSkoueVGRLlvRAHbk4rn3NVLNJV2JIYDxzWG7lKzGf9SqDojmQcAUlxPbTnp
         fl5xkfXlw6snOKbFJDb7ZUVBmafqn6VqyaIMKW14jCVo5lberKw5mcN0aJsrIOoNo7dc
         E8Q/kE2En4UYjkiahkxCOLQgr7351ItPrwP4AuKWeSkg2Ufbztnvb3idEHoepXkD1ErP
         NxFQgA/FkTgueRY/5HGC198j6UaJxDaSC9vI0UQljXJLIQOOu2BLsiGnrVMnvJCfpQ8t
         hY1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=haowenchao@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id l12-20020a81ee0c000000b002d7af1c4247si1211542ywm.4.2022.03.07.03.55.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2022 03:56:00 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from dggpemm500021.china.huawei.com (unknown [172.30.72.57])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4KBxcb0R6jz1GBys;
	Mon,  7 Mar 2022 19:51:11 +0800 (CST)
Received: from dggpemm500017.china.huawei.com (7.185.36.178) by
 dggpemm500021.china.huawei.com (7.185.36.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Mar 2022 19:55:57 +0800
Received: from [10.174.178.220] (10.174.178.220) by
 dggpemm500017.china.huawei.com (7.185.36.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 7 Mar 2022 19:55:56 +0800
Subject: Re: [PATCH 1/2] iscsi_tcp: Fix NULL pointer dereference in
 iscsi_sw_tcp_conn_get_param()
To: Mike Christie <michael.christie@oracle.com>, Lee Duncan
	<lduncan@suse.com>, Chris Leech <cleech@redhat.com>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, <open-iscsi@googlegroups.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: Wu Bo <wubo40@huawei.com>, Zhiqiang Liu <liuzhiqiang26@huawei.com>,
	<linfeilong@huawei.com>
References: <20220304025608.1874516-1-haowenchao@huawei.com>
 <e2b37e24-44dc-a159-e45d-2c720fe7ffc1@oracle.com>
From: "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com>
Message-ID: <c2891c08-5809-1f56-8783-357e6df1bc1a@huawei.com>
Date: Mon, 7 Mar 2022 19:55:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <e2b37e24-44dc-a159-e45d-2c720fe7ffc1@oracle.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.178.220]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
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

On 2022/3/3 23:03, Mike Christie wrote:
> On 3/3/22 8:56 PM, Wenchao Hao wrote:
>> kernel might crash in iscsi_sw_tcp_conn_get_param() because it dereference
>> an invalid address.
>>
>> The initialization of iscsi_conn's dd_data is after device_register() of
>> struct iscsi_cls_conn, so iscsi_conn's dd_data might not initialized when
>> iscsi_sw_tcp_conn_get_param() is called.
>>
> 
> We are actually doing sysfs/device addition wrong.
> 
> We should be doing the 2 step setup where in step 1 we alloc/init.
> When everything is allocated and initialized, then we should do
> device_add which exposes us to sysfs. On the teardown side, we are
> then supposed to do 2 steps where the remove function does device_del
> which waits until sysfs accesses are completed. We can then tear
> the structs down and free them and call device_put.
> 

I reviewed the teardown flow of iscsi_cls_conn, it has already written 
as what you saied.


> The exposure to NL would be similar where it goes into the wrapper
> around device_add. However, see my comments on the other patch where
> I don't think we can hit the bug you mention because every nl cmd
> that calls into the drivers is done under the rx_queue_mutex.
> 
> I think we should separate the iscsi_create_conn function like we
> do for sessions. This is going to be a little more involved because
> you need to also convert iscsi_tcp_conn_setup and the drivers since
> we can call into the drivers for the get_conn_param callout.
> .
> 

I hesitated about when should we call device_add(). I think there are 
two places to call it.

The first one is in iscsi_conn_setup(), after some initialization of 
conn, it keeps same with previous's implement and need not to change 
drivers' code. What's more, the change can fix iscsi_tcp's NULL pointer 
access.  While this change can not make sure the LLDs related sources 
are already initialized when iscsi_cls_conn is exposed to sysfs. It 
means LLDs' callback are still responsible to check if the resources are 
accessible.

Another one is in create_conn callback for each driver's 
iscsi_transport.  This need us to change each driver's code.

I send 2 patches which make changes in iscsi_conn_setup(), it's ok with 
iscsi_tcp, would you help to review them?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/c2891c08-5809-1f56-8783-357e6df1bc1a%40huawei.com.
