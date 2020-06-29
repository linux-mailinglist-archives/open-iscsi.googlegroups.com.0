Return-Path: <open-iscsi+bncBCVPTQVVPQIKXZHE64CRUBHB6C7X2@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 4040F20CB25
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 02:13:33 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id f21sf10477479otq.6
        for <lists+open-iscsi@lfdr.de>; Sun, 28 Jun 2020 17:13:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593389612; cv=pass;
        d=google.com; s=arc-20160816;
        b=QBCceag2QiLV1HQCjqCGJPFts0FvFsJS++xedmF+XDk6SGqZQl3VdbWgL09gMzhlln
         ba05l/6zLEyTeLpc01WcNyslxqL4v/5YvM5opwzOYXSndzLvike0GJ+srchBb8r0zSaS
         chEf794yVUM6bJ6GxMuik+rfh7kE6R17wRTc/atTs39Tzs3ZzRBqo76BWazHPuJ2b2gB
         DvEGmHToryCnzqCURD3jB4uVqokooy2FW8kY6t4Iwx92mjdGWbcFt4C+xiVxOoHTIXpf
         8Goq4UoK8eU06cOoveqhKUHC9ieyVlLau8YNkX6mLSNJIsWvYBMIcNcOgAU8DZz/iZUg
         2rng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=vN67rQSr7zwiygAz6JgMovq+65xaS4WN4St3YrTskJc=;
        b=Zk0aDgDVCVBWd1SWKOfHZ0OOh799xue3LPcEylMSzP5rbuvyk77XnK3lVFdErD97iq
         GB/g4rAI1cwo+Ylhr55dBVB0z4Rj5EQIQXm6xQvk/w9Z34ATZStFxj4Gi7WqkBDHWiYX
         yxRBA9I4/3hhgXLjM9iWQK42WhLANTzgj9lZRRJsKbgHwktNu4IRfY+/BShq/Eh9iHXG
         VUjsgCbgBi7qnpX1RlbJ7UWZ1D5/KZ5+f4rjVWq5SR4usIj5fAywQD47lTYKrN6sspJx
         AjgApWNZl15c/k9JQ/P8gdkGST09PFkm5rtNJuQod/uNGfAhFTgvwyQn1HXV7BVgF20d
         e8NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=qXVVp9Wb;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vN67rQSr7zwiygAz6JgMovq+65xaS4WN4St3YrTskJc=;
        b=sCq79nDVwwGp1fYTsOtoCptZLZTt4KStrIKg3FdIVnsOBEq7EEaIfNTCCsrE2MOhhw
         k2gpYPXyXT22IXNPkS0ZRv2U9wHul4YFAlWBeHh9YGwtJQwHydIZ2pCSwopbYvcFwOE5
         DEksb04R5ctogr+6I5VZ7YJ4Lq0vdI2gYJg+WDPnuSTPFDYiX+PLWADX9EVt5a51eeCq
         wf/SRaMnXtTJzLQrYUtC4QujKAfjGVlq5csou+/2mkwhZfCvypK6cN7RIo9aCLNBO95M
         r1tNY6nc24mXjAXX24eB7MhVlg4DuGH+XlKKx7DcaSPV5rxDPIWyU4ST/x74ChWdql1A
         Ylgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vN67rQSr7zwiygAz6JgMovq+65xaS4WN4St3YrTskJc=;
        b=ia+N+wtNTTJb8S/Fy07+RGZ0jDAfWaaQW7rnPFBftVgL7LM+itBNTASKytQn6hbLfe
         JVlbcD5x+vNicB3529JCT8ujyMyzkvhaxeif+1/BSjU/w4dMZJWulkCywZKkzJfBVMxO
         Q9pQc6Mw2UD8AwLjTtmpZpxiEBLznhvGQ3q1GwjoyBjFCcpj36JvfWSlTDNMidY+jlan
         HOkvDnqU/UPYDxEM7sbi6me0jpzuxGSvoMi9nQOb1yCdKBO6verkpp5IRph+u4XOR7pC
         hED9xBRCi+CooQYL1i4rK4gyNq1Kbt7K0V7yb3/2ylMko9GNdtW4yYUHf8BYRadcihqP
         ExPg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530C2ssXSrHlODGTYWEVeesnOLQDz6INgNnfDLAW+x4Q3HOqY7HY
	n+O37/7CxhOQMjrhGdUXr3o=
X-Google-Smtp-Source: ABdhPJw5U/hAja6pr5vCC4OH3U8ZB7CIO+3G3ba2DYc/SWQP/ApjFbRNBgdCvAn2GrLZOlUUCdhmrQ==
X-Received: by 2002:a9d:39b6:: with SMTP id y51mr10361875otb.175.1593389611836;
        Sun, 28 Jun 2020 17:13:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:c58b:: with SMTP id v133ls2916633oif.8.gmail; Sun, 28
 Jun 2020 17:13:31 -0700 (PDT)
X-Received: by 2002:aca:3241:: with SMTP id y62mr2164107oiy.128.1593389611407;
        Sun, 28 Jun 2020 17:13:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593389611; cv=none;
        d=google.com; s=arc-20160816;
        b=EWvrK1s82IDuYwsxZtF0U2stVp9z1qIShgrCaJ50F4iWZZFBBCdNg49Ix0yfny+4AL
         WfnmUwK3kGkWnDdfxQDQKWpBvSOhSO+BpiPvx2zVOWpkXSoWcg+4i+/SYU6yJra7jZWE
         KuJzo5St1MBOotjWX0DNwjJyLyOqtPVqrtxJY+J5mcODWb29d9AeYrf8SoQTxWwPmDu0
         SKuvgWnbaRIQ9RJpaIEoczauFUjUvbCoRkJavRjJ3ZPFB4vvV4JGAYShNn2A9YfaVzEA
         Yn2SXbzGg+FOSiboItuUhOFOQM5fzhSH9RMbZw/I/3ayGT+MUMjwGgFPLPCJVtBDRzmk
         D7vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=nf/pH693pK95+3C0v0zgkOwnWp0br/VkiuBJYye+DOw=;
        b=vzMjkNq7PfeZooDif6dZtFGwRbULnJbyjf0yNAT+MZZuSKeepA2uHU8Z3DZRjOaFIU
         aUnbDKzqc1Cf0vyImcyxwX81xK3od5qUahqC9cLjJEC7ZIzBuiG00Tf8xwICdymRkhsx
         MaRfDn6mpCBXic71Evc5qNMDox0TeARgfEOuICVuaN/xMNMMmTj0fpq8LvL7rhk1gDh5
         RzfVDZpP3r/D2flA/jVbCKhwMU2HE1Diun06l3QJByGNCdeaX9jyfSQHEcyX94CyOxQN
         sYE+dM+Er+7DuMhp/0c7eiIr0JgtE01AMP00Og/jC+rnUYNJHr88E2dPux7TmgRthjIj
         YXMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=qXVVp9Wb;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id l131si646129oif.4.2020.06.28.17.13.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jun 2020 17:13:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05T08stq026656;
	Mon, 29 Jun 2020 00:13:29 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 31wxrmupk0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 29 Jun 2020 00:13:29 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05T0CXH1069935;
	Mon, 29 Jun 2020 00:13:28 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 31xg0xu5rj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 29 Jun 2020 00:13:28 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05T0DQNl003139;
	Mon, 29 Jun 2020 00:13:26 GMT
Received: from [192.168.0.110] (/183.246.145.120)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 29 Jun 2020 00:11:44 +0000
Subject: Re: [PATCH 1/2] workqueue: don't always set __WQ_ORDERED implicitly
To: Lai Jiangshan <jiangshanlai+lkml@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Tejun Heo <tj@kernel.org>,
        martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com, lduncan@suse.com,
        michael.christie@oracle.com
References: <20200611100717.27506-1-bob.liu@oracle.com>
 <CAJhGHyDQLuoCkjwnze_6ZOLwXPtbNxnjxOr=fqqqsR_yxB9xtA@mail.gmail.com>
From: Bob Liu <bob.liu@oracle.com>
Message-ID: <52fa1d81-e585-37eb-55e5-0ed07ce7adc0@oracle.com>
Date: Mon, 29 Jun 2020 08:11:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAJhGHyDQLuoCkjwnze_6ZOLwXPtbNxnjxOr=fqqqsR_yxB9xtA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9666 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0
 mlxlogscore=999 suspectscore=0 bulkscore=0 mlxscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006290000
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9666 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1011
 malwarescore=0 phishscore=0 adultscore=0 cotscore=-2147483648
 lowpriorityscore=0 suspectscore=0 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006280181
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=qXVVp9Wb;
       spf=pass (google.com: domain of bob.liu@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
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

On 6/28/20 11:54 PM, Lai Jiangshan wrote:
> On Thu, Jun 11, 2020 at 6:29 PM Bob Liu <bob.liu@oracle.com> wrote:
>>
>> Current code always set 'Unbound && max_active == 1' workqueues to ordered
>> implicitly, while this may be not an expected behaviour for some use cases.
>>
>> E.g some scsi and iscsi workqueues(unbound && max_active = 1) want to be bind
>> to different cpu so as to get better isolation, but their cpumask can't be
>> changed because WQ_ORDERED is set implicitly.
> 
> Hello
> 
> If I read the code correctly, the reason why their cpumask can't
> be changed is because __WQ_ORDERED_EXPLICIT, not __WQ_ORDERED.
> 
>>
>> This patch adds a flag __WQ_ORDERED_DISABLE and also
>> create_singlethread_workqueue_noorder() to offer an new option.
>>
>> Signed-off-by: Bob Liu <bob.liu@oracle.com>
>> ---
>>  include/linux/workqueue.h | 4 ++++
>>  kernel/workqueue.c        | 4 +++-
>>  2 files changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/linux/workqueue.h b/include/linux/workqueue.h
>> index e48554e..4c86913 100644
>> --- a/include/linux/workqueue.h
>> +++ b/include/linux/workqueue.h
>> @@ -344,6 +344,7 @@ enum {
>>         __WQ_ORDERED            = 1 << 17, /* internal: workqueue is ordered */
>>         __WQ_LEGACY             = 1 << 18, /* internal: create*_workqueue() */
>>         __WQ_ORDERED_EXPLICIT   = 1 << 19, /* internal: alloc_ordered_workqueue() */
>> +       __WQ_ORDERED_DISABLE    = 1 << 20, /* internal: don't set __WQ_ORDERED implicitly */
>>
>>         WQ_MAX_ACTIVE           = 512,    /* I like 512, better ideas? */
>>         WQ_MAX_UNBOUND_PER_CPU  = 4,      /* 4 * #cpus for unbound wq */
>> @@ -433,6 +434,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
>>  #define create_singlethread_workqueue(name)                            \
>>         alloc_ordered_workqueue("%s", __WQ_LEGACY | WQ_MEM_RECLAIM, name)
>>
>> +#define create_singlethread_workqueue_noorder(name)                    \
>> +       alloc_workqueue("%s", WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | \
>> +                       WQ_UNBOUND | __WQ_ORDERED_DISABLE, 1, (name))
> 
> I think using __WQ_ORDERED without __WQ_ORDERED_EXPLICIT is what you
> need, in which case cpumask is allowed to be changed.
> 

I don't think so, see function workqueue_apply_unbound_cpumask():

wq_unbound_cpumask_store()
 > workqueue_set_unbound_cpumask()
   > workqueue_apply_unbound_cpumask() {
     ...
5276                 /* creating multiple pwqs breaks ordering guarantee */
5277                 if (wq->flags & __WQ_ORDERED)
5278                         continue;
                     	  ^^^^
                          Here will skip apply cpumask if only __WQ_ORDERED is set.

5280                 ctx = apply_wqattrs_prepare(wq, wq->unbound_attrs);

     }

Thanks for your review.
Bob

> Just use alloc_workqueue() with __WQ_ORDERED and max_active=1. It can
> be wrapped as a new function or macro, but I don't think> create_singlethread_workqueue_noorder() is a good name for it.
> 
>>  extern void destroy_workqueue(struct workqueue_struct *wq);
>>
>>  struct workqueue_attrs *alloc_workqueue_attrs(void);
>> diff --git a/kernel/workqueue.c b/kernel/workqueue.c
>> index 4e01c44..2167013 100644
>> --- a/kernel/workqueue.c
>> +++ b/kernel/workqueue.c
>> @@ -4237,7 +4237,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
>>          * on NUMA.
>>          */
>>         if ((flags & WQ_UNBOUND) && max_active == 1)
>> -               flags |= __WQ_ORDERED;
>> +               /* the caller may don't want __WQ_ORDERED to be set implicitly. */
>> +               if (!(flags & __WQ_ORDERED_DISABLE))
>> +                       flags |= __WQ_ORDERED;
>>
>>         /* see the comment above the definition of WQ_POWER_EFFICIENT */
>>         if ((flags & WQ_POWER_EFFICIENT) && wq_power_efficient)
>> --
>> 2.9.5
>>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/52fa1d81-e585-37eb-55e5-0ed07ce7adc0%40oracle.com.
