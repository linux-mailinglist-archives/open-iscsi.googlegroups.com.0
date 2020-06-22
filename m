Return-Path: <open-iscsi+bncBCVPTQVVPQIKXQWA64CRUBHN6A56C@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id D600D202ED2
	for <lists+open-iscsi@lfdr.de>; Mon, 22 Jun 2020 05:10:36 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id d6sf2655644vso.3
        for <lists+open-iscsi@lfdr.de>; Sun, 21 Jun 2020 20:10:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592795435; cv=pass;
        d=google.com; s=arc-20160816;
        b=wlfK5aalQmy8/FUKAFz0qeCOHWfVcZhfuNx8VXWqSq2czFHNQUmZTqMNsyB7dEhM0v
         VsYsj4k6vKOxfCtxGXEuqg0YIfLSFkP4IIII2wOes9oK9cPgWoGPeSq8HWAy2lXqknhH
         yYEcNB5g7/atyAClByZ19w2y9nkXLlJSDU6SgR9Ltr06qJ1iR8CuJH5TA41+1yCVnoHH
         5X1liOnQA8p38rAH0Vucl6CwAHDG62EHt3H6qH9PjKVIZowEiz0Wad21fL8SZCnVowJd
         E+gtO9X25D/i+GpunJmgwXW8IMNsL1ssckyGzZhVSl01Lxqq3Mf7jSIXy2simhcHhKwD
         Ishg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=LRlMkQzpdwF2OdRoEnbz2/RHy/ZR2A2TqFX2G7YdHEM=;
        b=Y+5Ga8gnHNVTKmstFZW2cJIeVjlua8qjyT83uyiuOgRLvxVeZiXqIl9/xB0rihVW0Z
         MzgthKyELp79K7lVfXNOV9VnzxVzDFIrmN6bgInGTcScdu7Vu90nUDfTUEtLS3myfdcV
         rZ0La3bjhX2wU4RBn7H6L0E1lq9p7By2L0lrHGp9lkh1AdotrTcOfTgU5ZtvLvRdidYg
         S/KKQLlhdJsJMk5Ne5x1ZelBDY6pDfPy3k32uZ3GEHkNpwPrKyFnID5mLD8k87qeWKnm
         /9Vx/At8RMGPxCVqm6NrKkeQJ5lV3M5IHjWh0glGauy1djzlpk07D7GOUyrDkqIbwpRz
         s2dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=blZfhzi+;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LRlMkQzpdwF2OdRoEnbz2/RHy/ZR2A2TqFX2G7YdHEM=;
        b=SiimiWYtSSbV+jpBwCyRgxjQFfHmyeg+AsVOB9/tvmlq0TT/NCUbZCBr5Q0YqWOJCX
         CQU2kDb/ab5vttebzbZjoTw8wGNBHbTWTUOBCoUCePBbh+z/zQmCXI94puOJrsntRXrw
         xpFtp3aAJLgZ7q0Rid/Jtr/ZaLEqGrEA1I4l0QUX3Mxfg29NFQe7vwjoL+xB2jNIptyg
         lJmvVOs5NoSJwcKIkIS3e27g5lFWlwhTcsaC0eqU4Ylqyu8pI6sUsQMchpnfFJgbyT0X
         T1hOs71nkXH00g2OGwiFLiGOubnvHx8tEHBSp9Ktf/vhJkDYKrsBYUGr8Adfele4nDWo
         Gwow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LRlMkQzpdwF2OdRoEnbz2/RHy/ZR2A2TqFX2G7YdHEM=;
        b=C5coz04Efdk1blXdZPqBq5dOuFswOAT7m7VCjgOHZBlyWMnii9uELiSGD4hRZI0ONV
         TVUwHCXwxu4sGD8dNcapLeHncOhn1HiinO+XS55Hi1AgWvALBXHZzkeTFkH+vJo0jaI5
         2/D7PeYkaWpht2YqK1ZPMhE7O3p/VdAvqHMHJiGlQDm2pgPnhjdlkS9zRj+h2fSEWAyS
         850doAM4JwwcgBrkwcwlWpWEp8rsQ3LmrLesAlQlVfQepeYk0gvnsUH4Fg6+0mnhS8Jw
         QnTYHeMbfDGzJ3IBnVC38iBV5YbWe1YEyooPuRMmmQqtCIM7l14AQO9l6RTL5vAWjcIc
         IVWA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531ZtN/tp03MjzSB/S37jluMGDTfEU3HLdEEFbaNQhFFn+jIL06E
	DX5L6Vu2N+RnWLnjTB4qAFc=
X-Google-Smtp-Source: ABdhPJw+yCRVEacP+tryZ8jpvZ8DT7N01zr1D+JZNz1HmE48Qdyxpd4wMtd+raw5b28fyExQuVlLfQ==
X-Received: by 2002:a67:eb95:: with SMTP id e21mr14829059vso.193.1592795435535;
        Sun, 21 Jun 2020 20:10:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:6e47:: with SMTP id j68ls1746862vsc.1.gmail; Sun, 21 Jun
 2020 20:10:35 -0700 (PDT)
X-Received: by 2002:a67:ee1b:: with SMTP id f27mr14416980vsp.34.1592795435184;
        Sun, 21 Jun 2020 20:10:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592795435; cv=none;
        d=google.com; s=arc-20160816;
        b=DCss5lpL0OEKhUOH3NZpaIqDJeIkRqLL6f2hhuKEX9K6CiER0TfDVvjNaP2G80pUCt
         JG5pq1kNdV1X/WSbV+MH3ye+ClrZWko/kgGzSJBR7t8ogo4oPt3YdGPUobMi4RTB5pDU
         FLu1y3oXIZ5djb7/q1m44rpHY/CWuFRh/6w9CsuPvIAJYGc6uRxtyWQsn/Hc4zRJa77b
         4sXmsDcI9KQt+e5h+jB0htvhWKacDkOUp/LPanEJayITcYdeyg8saCnRnGFXFzI9qovc
         YE1BFHTyvpV+OJY4INXYAyrw/kizTAGLasayVWldrkiuD9kN3NX0p4Wgf0d99ITKnnqT
         yG7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Z5AWohSIQN/10LPAph7pzNm6ZxTToaAIJFczhN/Pa+E=;
        b=UDqvkNxhnWbWKlzVm7dtsq+T99v1SBNYowxQcOIZW2IqnFMg5ArW+PWLtz+BQ89t6+
         WfEAQIi9TEEgXCSeEKt/eEbkc2ggOdMtF8rwYmYhgzZGhB5FRx403P9x1mfacDI7kZvU
         SlppYJhGvTP/+lN5nVd8G4Jk6WeU7UJCjqeiXIFnZm/QRqFc01yJ7g1cpuc8JMlou2+i
         ufvJZABJ4YXr80q3/8zpjHpR4KHSwN37c066JLg6EyUtvfUz2SXtpt+EtlGPwEgWaYYc
         pBLz7WB3YPBcDCeR1o75DbA8OQROLj/hu0j2n7W82CKaNeYiv6/51feIY7iU6tWP+tqe
         rSMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=blZfhzi+;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id v13si551376vsk.1.2020.06.21.20.10.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Jun 2020 20:10:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05M3AYL3156552;
	Mon, 22 Jun 2020 03:10:34 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 31sebbc1g3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 22 Jun 2020 03:10:33 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05M37VPh088556;
	Mon, 22 Jun 2020 03:08:33 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 31sv1k30hn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 22 Jun 2020 03:08:33 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05M38V6o019381;
	Mon, 22 Jun 2020 03:08:31 GMT
Received: from [192.168.0.110] (/183.246.145.120)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 22 Jun 2020 03:08:31 +0000
Subject: Re: [PATCH 1/2] workqueue: don't always set __WQ_ORDERED implicitly
To: linux-kernel@vger.kernel.org
Cc: tj@kernel.org, martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com, lduncan@suse.com,
        michael.christie@oracle.com
References: <20200611100717.27506-1-bob.liu@oracle.com>
From: Bob Liu <bob.liu@oracle.com>
Message-ID: <f926e5b0-b876-3dad-c1b2-33c250205452@oracle.com>
Date: Mon, 22 Jun 2020 11:08:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200611100717.27506-1-bob.liu@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9659 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=1 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006220023
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9659 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=999 cotscore=-2147483648 mlxscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=1 clxscore=1015
 impostorscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006220023
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=blZfhzi+;
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

ping..

On 6/11/20 6:07 PM, Bob Liu wrote:
> Current code always set 'Unbound && max_active == 1' workqueues to ordered
> implicitly, while this may be not an expected behaviour for some use cases.
> 
> E.g some scsi and iscsi workqueues(unbound && max_active = 1) want to be bind
> to different cpu so as to get better isolation, but their cpumask can't be
> changed because WQ_ORDERED is set implicitly.
> 
> This patch adds a flag __WQ_ORDERED_DISABLE and also
> create_singlethread_workqueue_noorder() to offer an new option.
> 
> Signed-off-by: Bob Liu <bob.liu@oracle.com>
> ---
>  include/linux/workqueue.h | 4 ++++
>  kernel/workqueue.c        | 4 +++-
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/workqueue.h b/include/linux/workqueue.h
> index e48554e..4c86913 100644
> --- a/include/linux/workqueue.h
> +++ b/include/linux/workqueue.h
> @@ -344,6 +344,7 @@ enum {
>  	__WQ_ORDERED		= 1 << 17, /* internal: workqueue is ordered */
>  	__WQ_LEGACY		= 1 << 18, /* internal: create*_workqueue() */
>  	__WQ_ORDERED_EXPLICIT	= 1 << 19, /* internal: alloc_ordered_workqueue() */
> +	__WQ_ORDERED_DISABLE	= 1 << 20, /* internal: don't set __WQ_ORDERED implicitly */
>  
>  	WQ_MAX_ACTIVE		= 512,	  /* I like 512, better ideas? */
>  	WQ_MAX_UNBOUND_PER_CPU	= 4,	  /* 4 * #cpus for unbound wq */
> @@ -433,6 +434,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
>  #define create_singlethread_workqueue(name)				\
>  	alloc_ordered_workqueue("%s", __WQ_LEGACY | WQ_MEM_RECLAIM, name)
>  
> +#define create_singlethread_workqueue_noorder(name)			\
> +	alloc_workqueue("%s", WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | \
> +			WQ_UNBOUND | __WQ_ORDERED_DISABLE, 1, (name))
>  extern void destroy_workqueue(struct workqueue_struct *wq);
>  
>  struct workqueue_attrs *alloc_workqueue_attrs(void);
> diff --git a/kernel/workqueue.c b/kernel/workqueue.c
> index 4e01c44..2167013 100644
> --- a/kernel/workqueue.c
> +++ b/kernel/workqueue.c
> @@ -4237,7 +4237,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
>  	 * on NUMA.
>  	 */
>  	if ((flags & WQ_UNBOUND) && max_active == 1)
> -		flags |= __WQ_ORDERED;
> +		/* the caller may don't want __WQ_ORDERED to be set implicitly. */
> +		if (!(flags & __WQ_ORDERED_DISABLE))
> +			flags |= __WQ_ORDERED;
>  
>  	/* see the comment above the definition of WQ_POWER_EFFICIENT */
>  	if ((flags & WQ_POWER_EFFICIENT) && wq_power_efficient)
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f926e5b0-b876-3dad-c1b2-33c250205452%40oracle.com.
