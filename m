Return-Path: <open-iscsi+bncBCVPTQVVPQIPH57E64CRUBBAX36SU@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7898420CB50
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 02:55:17 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id w23sf3600070pjy.7
        for <lists+open-iscsi@lfdr.de>; Sun, 28 Jun 2020 17:55:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593392116; cv=pass;
        d=google.com; s=arc-20160816;
        b=RTp0CazQ4RdYAcY3GF7vde9tWcYYEVLVwhZPWmWaqXWkaaghoXV6hueVsyiEOCbh7k
         +NRRPfQtGEkH0f5/dZKZ+ox6R9jeF7iVxImVcx1MadP1KBIVzm5dhiThDl4knNERh20r
         7KaGdJ+5tR8MGLczQijUKYEyqFKRpqMf3vNEdYRE2ofaHH4KajMW6iornhLPxvars5jr
         6sd0EJDpBEf3u4skgP+RPxO5FJOpMzkYQLMttWAEjQW3V3skhIfAItZkXYlizdB8ZTAf
         zpEd4VqYAHAx2iS4VVwbBUs+N5KkW2NMNueFg3mnnS7mODDBjY22DXXa3sil6647Izvv
         pMvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=w46u8aT2T8PIH/WQWkJfSnr8BFQvkFvupM4rV467o88=;
        b=MqEsq0WnZlUqX4yzaa3EnuRSt3wcvgt6UMaZhJIBqn8sviZU+ouvdztiyBxGYi0j62
         89XxzOKu+lK5ZPVhjH/4SVOAmwLoet6uDHZUzmNyfqyWJ1jQjVX4jPmK7RvcFhdgncRJ
         uMl9sL2ejKtzseIG2UX5IsmJ45KPVG6xvN0QLW4QC57Ln2u3SzzSgsnxI7GdE7WDoSOO
         KYeWB1oBAnp0lUPXTm0jf8zYsosQ8VXx7YHnT8MmEqOhI2m/coiSskL8Vi3W7IUL27Jl
         N7OaVpbA8WdwqpXVxMoMy5k2/VHL/AOr/wyS2abu8RBwuhJwIPNUj1AfsrchyphWm9Fp
         ++5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=lVBlQRlW;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=w46u8aT2T8PIH/WQWkJfSnr8BFQvkFvupM4rV467o88=;
        b=H7ggCKvhbpijFpIiL8SCbWqIkJ+thgs9GdGKnR7C8aiMyIM1WzPAu4AzFgklvTpN4U
         g6/hSdU4z7L68H+jPSWkXZO66ZvQfQF+rZT6euvpl0zHCDYaMHb4U+Bxh4tK9OctIOyM
         IpPbaosQXFHhi9VlRh62HEfFIBOBfyeGmFh7gVWQN8fLjC6j11b1s6LRKTZNQ6JvMHZZ
         R62OBle11JNVCneKP6HtQf1mb/04/5FAhWE4aUvjpWeuUFC1bpjpfAUleK1ImVa6TnVj
         L0KTJNbFxLPPRpegbVCEOjy8K/9Ycmy82+BWjOm/UTYV4sw6ImC1kJsFw5OlkVZ77doh
         755A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w46u8aT2T8PIH/WQWkJfSnr8BFQvkFvupM4rV467o88=;
        b=pSPJTB0jkbioaisNg4NsqXYd4fxucyb8RcoSb0h94gzwjE0BjTWAz7xXXUVdawwh5s
         zKAha/2OTEH8BAmAIblgQRV+l1M24beVdGIsBF4PRcmRmW8E+idSMGlIykE0Pb2iqJvm
         HTWmKB2VA42qr3i1jp9O+yRLuv+G4rt0B1HN1J/Yr+RvG6kQjIV0n5SBxgPFGWfOPeQI
         XFDA4H47MPYl15er0eVe01EgRMcE3Lafb+6Uwv6JYAVMpHdyz2YV422+qvxkz/YI7nfR
         q6RMENX/pS88IPZRQjCSGiRgLaX6RHW0iq5CPINiL8ohsNWff8amSmkcP8SSweHo9XV0
         3NWg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530gQOQABvfjguXAWDeKOlHdvxZkfywRzrbiVwbuayXdI6F5H7Kx
	TJHo+GfFEpEO/QRaHxB8mmo=
X-Google-Smtp-Source: ABdhPJy3ebq2pwjjx7FpYnXcqVu1OGwMrKT1UKBHp1CNm/OmU3J7E++xKKjrNYpNJLOLo8z4HexXvQ==
X-Received: by 2002:a17:90a:a788:: with SMTP id f8mr4356101pjq.39.1593392115709;
        Sun, 28 Jun 2020 17:55:15 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:7757:: with SMTP id s84ls1008797pfc.9.gmail; Sun, 28 Jun
 2020 17:55:15 -0700 (PDT)
X-Received: by 2002:a62:7e0d:: with SMTP id z13mr10370532pfc.161.1593392115324;
        Sun, 28 Jun 2020 17:55:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593392115; cv=none;
        d=google.com; s=arc-20160816;
        b=WDrqhmv+zXa1JwR87JksWBv6G9UVaqc2IiXV14UyJtHfQ2udiT1wq6+hVLOrcxfmte
         NEelX+L29wvRwMUrCZvJYQa7UkxYaQXZ1upvXsosvtZ0j4K3okc1A707glvBShERyxza
         x8+cVESA4X5Nt/3ZXY6l00Ra3J2QiS4hm7TV29/2JIJ74j9wQGFCN3vjeB6LJHgopAB1
         0f0eZu8ExoyLe13he1K1KOU4VanJf6egVdsKbYixGVmkKWTbslqVwBmiIEgHXOvEY6sb
         pKSlN4Hn7unApdQhyvEDrbqULTXJFn697vVmc7dQbQgCuDiDP4pPYvbIC9/tZP8d49aK
         HKcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=hqQa+jimtkizFB1HK+6xvuFdrQe98AOjYYMf/HQU23c=;
        b=WfogB32Rv9IR4zbB49ZA2a9VH2YV3l2m3BnjA/vqvhLpM7xJB6Lrzs2AtlrqZc0qX5
         GtwXdf2XsnrJC2N9Aa7jbaIi3jCwbEOhENFauj1t+FMBuTnvSEB4hcqitDy3uJsIrFwz
         LBrRUm3omBv6VgBwO9rSW1/pKQI7FthJcSl/ZIvJDv6HWB0ZmsWVM/UFMlImt0G0mKxE
         18/Hh38YM2EyIDek4+TFRPclQdkTkiK96c5ZMUmeTWzIMzd6Usq4pcNC/LLoXqbB9Krj
         anNYf2j1pj/WGdwvlxZc49k5Juz9rgp6TFylxS1kOo335k9UAGcBZb+lWivCp5OBSSbd
         fBmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=lVBlQRlW;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id q13si489034pfc.6.2020.06.28.17.55.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jun 2020 17:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05T0rCs6186757;
	Mon, 29 Jun 2020 00:55:13 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2130.oracle.com with ESMTP id 31wwhrbucf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 29 Jun 2020 00:55:13 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05T0rdSk036938;
	Mon, 29 Jun 2020 00:55:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 31xg1uag01-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 29 Jun 2020 00:55:12 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05T0tBJc019310;
	Mon, 29 Jun 2020 00:55:11 GMT
Received: from [192.168.0.110] (/183.246.145.120)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 29 Jun 2020 00:54:39 +0000
Subject: Re: [PATCH 1/2] workqueue: don't always set __WQ_ORDERED implicitly
To: Lai Jiangshan <jiangshanlai+lkml@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Tejun Heo <tj@kernel.org>,
        martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com, lduncan@suse.com,
        michael.christie@oracle.com
References: <20200611100717.27506-1-bob.liu@oracle.com>
 <CAJhGHyDQLuoCkjwnze_6ZOLwXPtbNxnjxOr=fqqqsR_yxB9xtA@mail.gmail.com>
 <52fa1d81-e585-37eb-55e5-0ed07ce7adc0@oracle.com>
 <CAJhGHyBPrCr3+iu-dMe69J3+tj99ea8crCGBuXc4yoStD+dEFA@mail.gmail.com>
From: Bob Liu <bob.liu@oracle.com>
Message-ID: <606433a0-f87b-8c00-1016-3488eff3fd5e@oracle.com>
Date: Mon, 29 Jun 2020 08:54:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAJhGHyBPrCr3+iu-dMe69J3+tj99ea8crCGBuXc4yoStD+dEFA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9666 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 mlxlogscore=999 adultscore=0 mlxscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006290003
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9666 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 phishscore=0 priorityscore=1501 clxscore=1015 cotscore=-2147483648
 mlxscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 spamscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006290003
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=lVBlQRlW;
       spf=pass (google.com: domain of bob.liu@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 6/29/20 8:37 AM, Lai Jiangshan wrote:
> On Mon, Jun 29, 2020 at 8:13 AM Bob Liu <bob.liu@oracle.com> wrote:
>>
>> On 6/28/20 11:54 PM, Lai Jiangshan wrote:
>>> On Thu, Jun 11, 2020 at 6:29 PM Bob Liu <bob.liu@oracle.com> wrote:
>>>>
>>>> Current code always set 'Unbound && max_active == 1' workqueues to ordered
>>>> implicitly, while this may be not an expected behaviour for some use cases.
>>>>
>>>> E.g some scsi and iscsi workqueues(unbound && max_active = 1) want to be bind
>>>> to different cpu so as to get better isolation, but their cpumask can't be
>>>> changed because WQ_ORDERED is set implicitly.
>>>
>>> Hello
>>>
>>> If I read the code correctly, the reason why their cpumask can't
>>> be changed is because __WQ_ORDERED_EXPLICIT, not __WQ_ORDERED.
>>>
>>>>
>>>> This patch adds a flag __WQ_ORDERED_DISABLE and also
>>>> create_singlethread_workqueue_noorder() to offer an new option.
>>>>
>>>> Signed-off-by: Bob Liu <bob.liu@oracle.com>
>>>> ---
>>>>  include/linux/workqueue.h | 4 ++++
>>>>  kernel/workqueue.c        | 4 +++-
>>>>  2 files changed, 7 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/include/linux/workqueue.h b/include/linux/workqueue.h
>>>> index e48554e..4c86913 100644
>>>> --- a/include/linux/workqueue.h
>>>> +++ b/include/linux/workqueue.h
>>>> @@ -344,6 +344,7 @@ enum {
>>>>         __WQ_ORDERED            = 1 << 17, /* internal: workqueue is ordered */
>>>>         __WQ_LEGACY             = 1 << 18, /* internal: create*_workqueue() */
>>>>         __WQ_ORDERED_EXPLICIT   = 1 << 19, /* internal: alloc_ordered_workqueue() */
>>>> +       __WQ_ORDERED_DISABLE    = 1 << 20, /* internal: don't set __WQ_ORDERED implicitly */
>>>>
>>>>         WQ_MAX_ACTIVE           = 512,    /* I like 512, better ideas? */
>>>>         WQ_MAX_UNBOUND_PER_CPU  = 4,      /* 4 * #cpus for unbound wq */
>>>> @@ -433,6 +434,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
>>>>  #define create_singlethread_workqueue(name)                            \
>>>>         alloc_ordered_workqueue("%s", __WQ_LEGACY | WQ_MEM_RECLAIM, name)
>>>>
>>>> +#define create_singlethread_workqueue_noorder(name)                    \
>>>> +       alloc_workqueue("%s", WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | \
>>>> +                       WQ_UNBOUND | __WQ_ORDERED_DISABLE, 1, (name))
>>>
>>> I think using __WQ_ORDERED without __WQ_ORDERED_EXPLICIT is what you
>>> need, in which case cpumask is allowed to be changed.
>>>
>>
>> I don't think so, see function workqueue_apply_unbound_cpumask():
>>
>> wq_unbound_cpumask_store()
>>  > workqueue_set_unbound_cpumask()
>>    > workqueue_apply_unbound_cpumask() {
>>      ...
>> 5276                 /* creating multiple pwqs breaks ordering guarantee */
>> 5277                 if (wq->flags & __WQ_ORDERED)
>> 5278                         continue;
>>                           ^^^^
>>                           Here will skip apply cpumask if only __WQ_ORDERED is set.
> 
> wq_unbound_cpumask_store() is for changing the cpumask of
> *all* workqueues. 

Isn't '/sys/bus/workqueue/devices/xxxx/cpumask' using the same function to change cpumask of 
specific workqueue?
Am I missing something..

> I don't think it can be used to make
> scsi and iscsi workqueues bound to different cpu.
> 

The idea is to register scsi/iscsi workqueues with WQ_SYSFS, and then they can be bounded to different
cpu by writing cpu number to "/sys/bus/workqueue/devices/xxxx/cpumask".

> apply_workqueue_attrs() is for changing the cpumask of the specific
> workqueue, which can change the cpumask of __WQ_ORDERED workqueue
> (but without __WQ_ORDERED_EXPLICIT).
> 
>>
>> 5280                 ctx = apply_wqattrs_prepare(wq, wq->unbound_attrs);
>>
>>      }
>>
>> Thanks for your review.
>> Bob
>>
>>> Just use alloc_workqueue() with __WQ_ORDERED and max_active=1. It can
>>> be wrapped as a new function or macro, but I don't think> create_singlethread_workqueue_noorder() is a good name for it.
>>>
>>>>  extern void destroy_workqueue(struct workqueue_struct *wq);
>>>>
>>>>  struct workqueue_attrs *alloc_workqueue_attrs(void);
>>>> diff --git a/kernel/workqueue.c b/kernel/workqueue.c
>>>> index 4e01c44..2167013 100644
>>>> --- a/kernel/workqueue.c
>>>> +++ b/kernel/workqueue.c
>>>> @@ -4237,7 +4237,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
>>>>          * on NUMA.
>>>>          */
>>>>         if ((flags & WQ_UNBOUND) && max_active == 1)
>>>> -               flags |= __WQ_ORDERED;
>>>> +               /* the caller may don't want __WQ_ORDERED to be set implicitly. */
>>>> +               if (!(flags & __WQ_ORDERED_DISABLE))
>>>> +                       flags |= __WQ_ORDERED;
>>>>
>>>>         /* see the comment above the definition of WQ_POWER_EFFICIENT */
>>>>         if ((flags & WQ_POWER_EFFICIENT) && wq_power_efficient)
>>>> --
>>>> 2.9.5
>>>>
>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/606433a0-f87b-8c00-1016-3488eff3fd5e%40oracle.com.
