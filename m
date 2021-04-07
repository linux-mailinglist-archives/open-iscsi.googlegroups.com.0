Return-Path: <open-iscsi+bncBAABB5OEXWBQMGQEG4DL2SQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F5B358E0F
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Apr 2021 22:07:18 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id n3sf1835065qvr.8
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Apr 2021 13:07:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617912437; cv=pass;
        d=google.com; s=arc-20160816;
        b=n8ir4hNnY85EC7kfIZKWtV+DKlHe5u5SMPmLUbAkOWYeJwz5eopDA1GAqCBnrhtU/K
         /rSQ5VNTdXtaOCtlPYAsjtmaQxpifYv/0P/smjqVFkZtTQFBBOWhkov8Y2Ci77alCb4n
         QtETj3gIgnxM18Yn23pV/9E3k62PYJZNyRExpuX8l0AiMCkdIyOhhBl7DDK3bVyI6Ct5
         o3pQbeyJcXvtoYEDtRtJ7HsR/nOU0JAyaDKZXu6GBW1EpQ5pkitQvcsob3lhEjhcd51g
         61IzeiQYsTAyEBmtsSAv0oB95jez7QIG8mUpEIuZxrdxUkK1Fp04U2Ml0h9nyIdXVDKu
         jBiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=bmiI+RMYzYZYMWC6+RiFH3dEaA+NhQmHGxFiXq/Qnl8=;
        b=dIy0aKz6WQmJheyD4rS0VkNso2ETfuv77Io0JMudpJ1eiBnqTEZyUqZTnEAF5txjef
         pyoLnWY2DMJ7Ol/SUdrVKjbThmLT4KwCsqttGpYML0D1Y77Nwnpr8SnhsoMZZPWAnLFA
         S7r7HUcVX7Kzm7fAZvMnH4C07XSRuTTnKJ0mulNGjeyo/y3gi02Ng2ZyZ85nm4rIq+k0
         /kOVL8MdHDIgnxIMAMLeEoPFzySJSTjE59UYVSooQQydc/+OwjtKnhaP2JItrQPmuv4y
         ozAnf3WI9zMvpeUtZdhWi2o0vkQY6W9mREpy9NW5ucBDBW5nGcjtlF28Sk3lqL8HrluR
         r/Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yangerkun@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bmiI+RMYzYZYMWC6+RiFH3dEaA+NhQmHGxFiXq/Qnl8=;
        b=E94AQAujn01eJZKYj2KO751qlY9CEvo6r1ATvmSPGjS7BB5SVf1jXNb89tAmGg1tAs
         +LuSO7JayKi9GuE0bKCsGZd4MX00ws8mp7hhTPHttt1RBQDlR1fm4zVf2Gkrp0MLAj0H
         UywL6E743h0eYpAn+bpRCBPXUWnopo8HeLdYJqfWW9ruLnorm3s685ZT2K8yNnrb51vB
         QZvcQ6DoC6shHlhYs5zDB6qRBLPRmnEmOZ9v6aaK5x7msIDrtGs/DKYNKZgJUIjbpcJO
         CdylEcmImlUiY+SCANeW4CKjF5FIiuItVjgwlm/A7IGqFiibesJhCe8YAXrLRHILW7PM
         vanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bmiI+RMYzYZYMWC6+RiFH3dEaA+NhQmHGxFiXq/Qnl8=;
        b=ON0cx6Vebq86rLWFjDf2WgQ2CTYtxBmkGQOkw48Txmh3M+RqShoVsGSYMJRQRtss9y
         VbR+zh4NMZRKkukB+2RjbZOdyFY5PeW9XRAoBqcAgAlQfsfYq64Gzfwq9CPKJWukZ/jR
         TA78nxMlSTpmxQJ8WtCfYZwNi+QqIxSnbidKPFksX8ZDTRAvuPBSLkCJuBmKT31qSlPt
         6N6VRQ26kfhjmK+J/1/MPjiszBe/UT9/V5tyc0bHTXKWMCYNgE1BEgwa3X/ZYLOTf15n
         f+GyfmM178clhIObiATdTUu+SWEvYOY2KMgpEiYBscMzBSBPtIGKt9WByQtEY1VuMHbO
         32bQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530N/DjMVn3YHN5N01JUXO9j00VO/ngKCF3kMyXlTXMH3kUR1s68
	QFmUiDN5iOJErbd6Wh/Ylos=
X-Google-Smtp-Source: ABdhPJxh5o5TJHKBnR2QMLEkC+4LSnq/ExZBNek8McQnbC+H8bVCkDRSouUzxqBpHYShtD0kTAWRUw==
X-Received: by 2002:a0c:a0c6:: with SMTP id c64mr10526284qva.57.1617912437208;
        Thu, 08 Apr 2021 13:07:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls3817715qkc.3.gmail; Thu, 08
 Apr 2021 13:07:16 -0700 (PDT)
X-Received: by 2002:a05:620a:53d:: with SMTP id h29mr10165278qkh.29.1617912436877;
        Thu, 08 Apr 2021 13:07:16 -0700 (PDT)
Received: by 2002:a05:620a:110c:b029:281:8987:e7e2 with SMTP id o12-20020a05620a110cb02902818987e7e2msqkk;
        Wed, 7 Apr 2021 06:49:48 -0700 (PDT)
X-Received: by 2002:a0c:c243:: with SMTP id w3mr3549315qvh.34.1617803388254;
        Wed, 07 Apr 2021 06:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617803388; cv=none;
        d=google.com; s=arc-20160816;
        b=W5bXoJhMVtJrUbpwmt3hV15YzvQWnXnyXPc5vQNaA9K10wnRD7WW4zVigeHG2JkGDY
         l9VA21e/3V5Q4VGmgbpdjAiiKSK8Pcx4FgaQRfIBhhWlCXw7RBGiZM5lJ6lMtAZg7F76
         frRVcaPnl+1/T3ndUkqjSYDzLAEYrnogd1kGzDgCQL9MKCfn9s44wPK7ZUvHkQA7oNAH
         /e7MnaFplC4EiqQ8Z4Hr/bQwTA+2v1K6zRRV4oAlXhF62nTttrshOvtsfs6V/6u3E1UB
         9+P3HDwLs3oIdUCKSHjVCb7TnmLTR/JTBuPupCCUjW8QwCQPDSJDA3DlgewHoZ5AXR1O
         +fLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=P/SUQKQnp9Yoza1ch84fCTfaXph4Bxu0Mg5Plj2yZNI=;
        b=ODbggRLvBjJwReH5bgfuzsfbEl707gzOHJkVsDAl16jMIBACtx5t3J8ciuYimCTvJJ
         nJWFFVUjPTcMH5gl8Cg2DT7RY38+n98Hg2QjvHwLAPuSnR30D+DKZ+B3AFlmBd8Wx+xp
         KPjhxAp8S00HLvdulhdO3ongxOvvYkD6OcPlPhgmQZtHu/QeXCgLcYQX0K9ebKMIQuBw
         c5ZaNME1ZSCIii78Ol/7z0gmcO+b5SJIrxKVcgjjMTl/lwI+qOVngpRvMtYkxK2Reym6
         cp4XH2R9IgXnzAhQ9wfieExeCWTuUn/lQRhV/CfzZaWo1VfQ0C53I/TJ/WcKcWIO/7Wy
         g4Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yangerkun@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id k1si3871724qtg.2.2021.04.07.06.49.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 06:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of yangerkun@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FFm1224hfz19Kkt;
	Wed,  7 Apr 2021 21:47:34 +0800 (CST)
Received: from [10.174.176.73] (10.174.176.73) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.498.0; Wed, 7 Apr 2021 21:49:35 +0800
Subject: Re: [QUESTION] WARNNING after 3d8e2128f26a ("sysfs: Add sysfs_emit
 and sysfs_emit_at to format sysfs output")
To: Joe Perches <joe@perches.com>, Matthew Wilcox <willy@infradead.org>,
	"Greg KH" <gregkh@linuxfoundation.org>
CC: <stable@vger.kernel.org>, <vbabka@suse.cz>, <linux-mm@kvack.org>,
	<open-iscsi@googlegroups.com>, <cleech@redhat.com>, "zhangyi (F)"
	<yi.zhang@huawei.com>, Kefeng Wang <wangkefeng.wang@huawei.com>,
	<liuyongqiang13@huawei.com>, "Zhengyejian (Zetta)" <zhengyejian1@huawei.com>,
	Yang Yingliang <yangyingliang@huawei.com>, <chenzhou10@huawei.com>
References: <5837f5d9-2235-3ac2-f3f2-712e6cf4da5c@huawei.com>
 <YGbLiIL8ewIX1Hrt@kroah.com> <20210402144120.GO351017@casper.infradead.org>
 <08b739b5-4401-e550-2028-1ce43db38141@huawei.com>
 <cf36c95f3f92bd76f2d6c81c5795acefbe358f09.camel@perches.com>
From: yangerkun <yangerkun@huawei.com>
Message-ID: <91f1d0e6-1ed3-7f32-029a-370169b9c00a@huawei.com>
Date: Wed, 7 Apr 2021 21:49:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <cf36c95f3f92bd76f2d6c81c5795acefbe358f09.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.176.73]
X-CFilter-Loop: Reflected
X-Original-Sender: yangerkun@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangerkun@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=yangerkun@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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



=E5=9C=A8 2021/4/7 21:21, Joe Perches =E5=86=99=E9=81=93:
> On Wed, 2021-04-07 at 20:14 +0800, yangerkun wrote:
>>
>> =E5=9C=A8 2021/4/2 22:41, Matthew Wilcox =E5=86=99=E9=81=93:
>>> On Fri, Apr 02, 2021 at 09:45:12AM +0200, Greg KH wrote:
>>>> Why is the buffer alignment considered a "waste" here?  If that change
>>>> is in Linus's tree and newer kernels (it showed up in 5.4 which was
>>>> released quite a while ago), where are the people complaining about it
>>>> there?
>>>>
>>>> I think backporting 59bb47985c1d ("mm, sl[aou]b: guarantee natural
>>>> alignment for kmalloc(power-of-two)") seems like the correct thing to =
do
>>>> here to bring things into alignment (pun intended) with newer kernels.
>>>
>>> It's only a waste for slabs which need things like redzones (eg we coul=
d
>>> get 7 512-byte allocations out of a 4kB page with a 64 byte redzone
>>> and no alignment ; with alignment we can only get four).  Since slub
>>> can enable/disable redzones on a per-slab basis, and redzones aren't
>>> terribly interesting now that we have kasan/kfence, nobody really cares=
.
>>>
>>> .
>>>
>>
>> Thanks for your explain! The imfluence seems minimal since the "waste"
>> will happen only when we enable slub_debug.
>>
>> One more question for Joe Perches. Patch v2[1] does not add the
>> alignment check for buf and we add it in v3[2]. I don't see the
>> necessity for this check... Can you help to explain that why we need thi=
s?
>=20
> It's to make sure it's a PAGE_SIZE aligned buffer.
> It's just so it would not be misused/abused in non-sysfs derived cases.
>=20
> .
>=20

Thanks! It help me to understand the problem better!

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/91f1d0e6-1ed3-7f32-029a-370169b9c00a%40huawei.com.
