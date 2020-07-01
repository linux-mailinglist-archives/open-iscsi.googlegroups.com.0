Return-Path: <open-iscsi+bncBCVPTQVVPQINF67P64CRUBCJERGMA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D92721024F
	for <lists+open-iscsi@lfdr.de>; Wed,  1 Jul 2020 05:07:00 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id e127sf6777865pgc.2
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 20:07:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593572819; cv=pass;
        d=google.com; s=arc-20160816;
        b=MyKaNCFtGUTcyI5OhO81nAJMpym27im8bfXT8Zg6IgKhQ6g2jZbd8+huD1udwQDh13
         /TpnsXsLTLdET2T7dXpkvoQYjtzWj9vxSHxUT8FZYXO4u7er69ZVIZ1mn73D5SWHM/xW
         rTZkeIOlWR7kHcRb2qh98Y6Z34oM0MYziVnAISvgYjRc+JNkEQPA2740t/is1QJF+b39
         EVqoT/I9i8XffQfGcTY+/vVwOfsomxJ9UArf7G3I8w6RhSq8pWBzIkRjjENOiPnP3d/B
         pLjcbpMjY+EqCXjLro9C0FAz5ipPVqg+ay6rLwH4a+xpZSdV4NiFd1a97HSmplDzlGND
         0ehA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=q1ZJm1GeVeSwluPdFwaHFQPpG9Yw+SyDnkgLQuRAewI=;
        b=A6EKXsKaEwZEgdCw11igh3P3vXdt/6X9JsqxY7mCJpnOmFtWI4Xsp3CGeBHf9VhAjh
         Y3XwxoqWB7YjRE9BDsv0jcEPj6EI2Pb7daAtZUITU33i7ZwPS0jHYoCALm+zcjETRn4E
         0+0zCOM4x5gNbetidzGqhXmB+HfXAPaurz4DQEKnm8rR6kULCQknDXIVozW32uzOKlYR
         AZ5oVeGx9RMwGfJuet6cWL13bXmji80ZoXnYT2kruIp7nh1yz/KD3kc0hVHc+Nowb1Bq
         BQ1bT+HjVqnoC51iBxx4NUT8ucympZaADY47A8klzxt32hTB453yoi0xLs6QbRoFqjvR
         y54w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=gz+Cecqn;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=q1ZJm1GeVeSwluPdFwaHFQPpG9Yw+SyDnkgLQuRAewI=;
        b=TKwJ0wtNy6xMpDdOKolSZiMg9KA4IpFEG8gwqWEmCdGMB2z4Pwsqg0vW86D9QqnxGP
         fjs7sbd2uDqQ76NdAXmoxtlH/Dr4pAb/l7gLznidKyauraU8vunjzI70Fs16Xb3QCtvz
         QjJRHpuVqJZFzEjhLBpdSNjuKUETq/AZfxsD5LARbO2FPsqyeTaO81oVQT46JVmwKqTn
         bseqGXHuO/exntfiOnURvIEZwSp9pNW7j+MnOM4ihIPkHbHIjqa2rusCt/kPnoojL6B8
         Zcho3K7E6k/Nn4a+mx3mSWZWu6075gQ1FYX1WlJloCEcnL1z0vX+1Vz9ZikQmOF1C/S7
         utnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q1ZJm1GeVeSwluPdFwaHFQPpG9Yw+SyDnkgLQuRAewI=;
        b=YUQcIpfwfEERiZHLBl53nR196sTYxJGjnxWFBOqZa1WyQO7XQigC9iDdVzUF5liUOf
         9DdgGiaD+CuiFfQLaGyGpMXhZeHwUSAf7qZS11iUt34AOJaE+kGauu3dZZVhhc8UXa4P
         Btm2rvNWKSjPv2BIrUyogkgFFVkVMn7SIKb6/4xRVswKe0cgWoRXCfcnTuquE58tC9n9
         wNisQU3Frz2exJPNk5cuOaiIt6+R2OJFUqrgoCShKh7OIG7kzqxE6cN2ENi8XfRTHV5W
         5jYwlzDti/DWSgcnA8Vc2r34xisHPRCLxKH/1H95KGM3LIAh+DFQYwzkIH9OVYk6OUq7
         YY7g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5339KcWNVzLvFLabRZxGHSqknfiIdps33am4etgvQujnvHK3PZS3
	qoNTYAk8w4XmLUODH8XXB38=
X-Google-Smtp-Source: ABdhPJwt+zSKXQRDVxDDs7cOIMbmym7Qbfjkt+b50KONjaySeF3QL1XROVoqVTtfmDdayCxEv4CJmA==
X-Received: by 2002:a63:7c5:: with SMTP id 188mr18322199pgh.48.1593572818931;
        Tue, 30 Jun 2020 20:06:58 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls313697plf.2.gmail; Tue, 30
 Jun 2020 20:06:58 -0700 (PDT)
X-Received: by 2002:a17:90a:df0f:: with SMTP id gp15mr25692946pjb.98.1593572818560;
        Tue, 30 Jun 2020 20:06:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593572818; cv=none;
        d=google.com; s=arc-20160816;
        b=RBp9r5QNPEUKHgxNGWUaCRbf/8YhHQInt06JLbOD+/6cGG7oMkoeIfyLe4Ohjp6PyC
         kDecDnWieYaJkrka3kndMOMNN3nMamDJiOY0AqJ09rfdTJiJtFJYKSCnJ7/MasxzZl3X
         oUdSsmVAkqV/uH4XnRHvUmJootGzLVZ4Qs/9yLyR5fkTdykSbfZqOJIABsskAnzXioEk
         zpEXZQldFjTzIKwGXCYhxIQQvel89RSJ6Xf9tu5Cp9a4S3fFpFDxDpiN/X9Bfgkji7gn
         VZVHOIJh5J8DeS9rKVukfqQfwtJgs+kYInxGe9GcdTDpsRClh7HLVR+8PrV0C2G63hyf
         WJtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=C+OQSk8SX2KjNV/BOEHQlX3V1mNEDOQ2Qwd9iZIvMHg=;
        b=bpD7YaRylM9hkZFMSCTI0qVbljCjsDIqTjfSXHSKW1Hhc+JX1SqZwvQW9wPTpSIhNC
         D44hd57BbuhucM1K1TIdp3pHSYwmuNxI4rB3xkJDPYWeFwkdZEoGkKanxUviUzXC4MjT
         7OjtFGwgNslkehrNKaNeYDrvhAfFLxAGahqce/iH/ad3RmXM/SE0xM+xwK1AuPzbLL6g
         +RCGNujgjA7o1EKti8IT+STprS8V0CP1ssDBnBI8JG4pwclkCOKRxnIjvSyv4sTG9zgr
         5LldMMjE1Vby4soI4zyZWWexShVgSuHZpbLXiQpodZTGndpIIfE0YcollbjttCwg9Dtb
         vpkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=gz+Cecqn;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id kb2si218605pjb.1.2020.06.30.20.06.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 20:06:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06136vQ0180635;
	Wed, 1 Jul 2020 03:06:57 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 31xx1dvr63-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 01 Jul 2020 03:06:57 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0612wlHC085708;
	Wed, 1 Jul 2020 03:06:56 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 31xfvtbt98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 01 Jul 2020 03:06:56 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06136sV0029228;
	Wed, 1 Jul 2020 03:06:54 GMT
Received: from [192.168.0.110] (/183.246.145.120)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 01 Jul 2020 03:06:53 +0000
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
Message-ID: <bdf25dd0-7ac3-52b5-855b-14955443c52b@oracle.com>
Date: Wed, 1 Jul 2020 11:06:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAJhGHyBPrCr3+iu-dMe69J3+tj99ea8crCGBuXc4yoStD+dEFA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9668 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007010018
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9668 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 clxscore=1015 adultscore=0
 suspectscore=0 mlxlogscore=999 cotscore=-2147483648 lowpriorityscore=0
 malwarescore=0 phishscore=0 impostorscore=0 mlxscore=0 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007010019
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=gz+Cecqn;
       spf=pass (google.com: domain of bob.liu@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
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
> *all* workqueues. I don't think it can be used to make
> scsi and iscsi workqueues bound to different cpu.
> 
> apply_workqueue_attrs() is for changing the cpumask of the specific
> workqueue, which can change the cpumask of __WQ_ORDERED workqueue
> (but without __WQ_ORDERED_EXPLICIT).
> 

Yes, you are right. I made a mistake.
Sorry for the noise.

Regards,
Bob

>>
>> 5280                 ctx = apply_wqattrs_prepare(wq, wq->unbound_attrs);
>>
>>      }

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/bdf25dd0-7ac3-52b5-855b-14955443c52b%40oracle.com.
