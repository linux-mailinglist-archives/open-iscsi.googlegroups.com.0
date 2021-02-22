Return-Path: <open-iscsi+bncBCWKVBMB54EBBL6YZWAQMGQE2CIADEQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id B62B4321209
	for <lists+open-iscsi@lfdr.de>; Mon, 22 Feb 2021 09:32:48 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id m13sf12255235ljb.19
        for <lists+open-iscsi@lfdr.de>; Mon, 22 Feb 2021 00:32:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613982768; cv=pass;
        d=google.com; s=arc-20160816;
        b=lDGsdcjk2kKvOVx6HQjswdT74Dm5Qo2XR8OkbeTlfLA9ZqakVsjrtLNSOLCOQgeSOQ
         ZPFk27//xmfX9v32Ygw5HUrBtE0e3spL7YH0lyDpjxhULPW85SrHxWkyUIo0Z2Lm9mZe
         ARAxEwhYUnaC1z8GmYVd8R9YYPCyuah8mgbvVPTl5b/KNIZySvGKXjx+2+NNhptEEi2R
         JsWt9m6IlxLMbxGXFLA8SU47rXhzatZDmlw6zh2FmCPO8oIgu85AudwtK8hzQNIMe1t1
         N/xUh+Z1GUcn97xAYvxjEW2J/6saSmBrbI5rwtlU5y07+XqXqpE3vuAwwGkRmXqY8J+/
         zgyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=xkwgu6p8FY+Dd2ggeZM99LK7W3578I5p2RmrDFI5Iuk=;
        b=LcCJWSK2+e4N4/ioC1uFsWIvUx8snqM2i3ipvEnMu10ItPjMZ9Rkq0ATFinC+btqor
         rUBYx5MmlvAJI4M5B/VkzmZp/FiQCL9RuMUDXy5pSqrjcPcfHK3g//xwUviMvK2s4tkQ
         ywayEXsOqQc92QwLCk3P6GRRDQShtok7Wnzrktp3RCcQ6v0YIglKQ1UUIi2Xh94JNdAk
         Q8+wjCMoNVq/ZBsP5gtvZxIblHZXDdHLZbfdgu89NrFR+tdNNDgEhXLnjaNuIL7TMb3k
         Oou3HCcceYRQ3AIVz1GX/8eMNufMsLL2VDBiCthG7TM9RMS3CQAEd6ltYdA/n68WmHC6
         k8zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of john.garry@huawei.com designates 185.176.79.56 as permitted sender) smtp.mailfrom=john.garry@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xkwgu6p8FY+Dd2ggeZM99LK7W3578I5p2RmrDFI5Iuk=;
        b=Ciosnf5Gs8HGem+QoTMnBqHwjLwqRJ3LujLYHbODqJqZN8IV7GIXE9k+VwTn6HfD9q
         PJy6jQn/bExYKRuL4r5gGzcaav2TEk25mmyMoh1tdAW6tDgyuRXoSCB83WfDAXEg1xpM
         eyRj20LBCw3siwJMlhsWY0uOqGp9LAcFnT1wwXY5pv5lqI+P8Cm1zLa0d6KwnUi/Dvmi
         VVDFCkCmppO1LCBPXOYEhnnI7ZeHivPUilRnH/r36rXyY5EzL25J+1GNA5ALSlLdxE3C
         Gn8tbnmVi+bYYnUsuwnASY5SdcKs+GLqTmlI9ZSf0RRLhbXy4WYJ5m2kcnFxbD1jpoCJ
         IhKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xkwgu6p8FY+Dd2ggeZM99LK7W3578I5p2RmrDFI5Iuk=;
        b=NhNU3Ed2mpcboA0MvGeJXGsME9msU+hyhgfr/rsWFBYV+iJasgWWueLpBLz8Qyoqlh
         Tm1OxKj1502VdI2QzN6K8RawlJbVHzRwJsHP5K/zsrtkbJjo8R4mGn5BBZFBZ19pBZOG
         BRt2eIZIgsFECjDc3J6mdl7Av1c1McMxY0iQ0L5L3Rn7SyXOT86EHWjWU0YCpz20mqZw
         P7FI5eT61nj/U32ukCCRBmw3qDQ10DLiuizsahMqMOg5QtbWtHvnWT30TGz48vgIDlHW
         cUtSMGAlHS83BX5a6JnlS+LPurf/9+6A77Zl5hch+0SMvUlVQHj4UcDGr+1ZRAxiKS57
         9BqA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530s52Ly2wPgbuCva2AuLYa/bPvSxvcMwYHdN6F2IQ9XbVPiILLx
	jiURsMZpV9bj4hApEcsct1A=
X-Google-Smtp-Source: ABdhPJzIznsL7L6q9CbdlQWpe5DB1qUobXdWn+y58w+l1p0fS7Ozn05ZXNPpqyqCKT2ptAUiGtjAJA==
X-Received: by 2002:a2e:b54d:: with SMTP id a13mr2837509ljn.196.1613982768324;
        Mon, 22 Feb 2021 00:32:48 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a19:4c:: with SMTP id 73ls3775466lfa.2.gmail; Mon, 22 Feb
 2021 00:32:47 -0800 (PST)
X-Received: by 2002:ac2:446b:: with SMTP id y11mr4753878lfl.610.1613982766991;
        Mon, 22 Feb 2021 00:32:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613982766; cv=none;
        d=google.com; s=arc-20160816;
        b=X7kHWRsIohBL4OQaGoV7aZh+E5DZ7DjciifGcmR3cHGju+kKUyrYNeYcGdMvP1PngD
         wPziEN0fF+jcmd+WsJugpmGFI+c4Abmu8/UTEj3iG4Zez/x44y/6uVsXUfooSFqEZTnG
         6liW//toGlG4MQ07bcYT40vxWSp+Rmz2otDquYG56C+uxnF3N4TG03m4PU5DkF0PiIeZ
         CY/h+7UsawRLKZrrSp6OlRL+FFk0lFV7u+hLrdFQAuTIUHpDXUOoZJENjQIKUnrw4gfj
         17wgK+sAaPTQgsQmOrJLqHhUlVjBrYblKSTzT+AKvfZA1gTnDb5vUewe9VLgccijAVH6
         QxlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=NqP2Z9l7m9SxBEtOfLpwsAQsomHIo0Z2IbdgCkb+FPI=;
        b=Oq+6jTf2TwycGP0zFxlulDy6TvTSTnuSCrRM8GlhToti8jfJ5cPS4KeS1kaQnohRyz
         gj9OoLkdl8N2DgviI7Zw7XStoAbjCc+DOSpp4UbzfTexqpi7PuMzHs4FV4iJVebYrfFq
         G5i7hjz/+7LPrzjWYFkrrEE6hiLn6Ju1n/XZhnS5agankapqvNyQLdOsDCC7ZURWgthZ
         50mcJWRKXg9muNCjVYqKbvjL6lOejifpf5UhZfc43HMeR9R1gnd31AUCRo9PtQZAGD+c
         nYHEaCKUPNacA/zhd264sYn0gzEcHM/aUmvJjMiqE7AdsYsv1nfQDw4KTML7btdQnMak
         dGQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of john.garry@huawei.com designates 185.176.79.56 as permitted sender) smtp.mailfrom=john.garry@huawei.com
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com. [185.176.79.56])
        by gmr-mx.google.com with ESMTPS id w18si678063ljw.1.2021.02.22.00.32.46
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2021 00:32:46 -0800 (PST)
Received-SPF: pass (google.com: domain of john.garry@huawei.com designates 185.176.79.56 as permitted sender) client-ip=185.176.79.56;
Received: from fraeml704-chm.china.huawei.com (unknown [172.18.147.200])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4DkZxm2bjyz67bmb;
	Mon, 22 Feb 2021 16:25:32 +0800 (CST)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 fraeml704-chm.china.huawei.com (10.206.15.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2106.2; Mon, 22 Feb 2021 09:32:43 +0100
Received: from [10.210.165.112] (10.210.165.112) by
 lhreml724-chm.china.huawei.com (10.201.108.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 08:32:43 +0000
Subject: Re: [PATCH] scsi: iscsi: Switch to using the new API kobj_to_dev()
To: Yang Li <yang.lee@linux.alibaba.com>, <martin.petersen@oracle.com>
CC: <jejb@linux.ibm.com>, <lduncan@suse.com>, <cleech@redhat.com>,
	<open-iscsi@googlegroups.com>, <linux-scsi@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
References: <1613978804-4846-1-git-send-email-yang.lee@linux.alibaba.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <4fa2baa0-8727-9e72-eb42-db773401b8a1@huawei.com>
Date: Mon, 22 Feb 2021 08:30:57 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <1613978804-4846-1-git-send-email-yang.lee@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.210.165.112]
X-ClientProxiedBy: lhreml748-chm.china.huawei.com (10.201.108.198) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-Original-Sender: john.garry@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of john.garry@huawei.com designates 185.176.79.56 as
 permitted sender) smtp.mailfrom=john.garry@huawei.com
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

On 22/02/2021 07:26, Yang Li wrote:
> fixed the following coccicheck:
> ./drivers/scsi/scsi_transport_iscsi.c:436:60-61: WARNING opportunity for
> kobj_to_dev()
> ./drivers/scsi/scsi_transport_iscsi.c:1128:60-61: WARNING opportunity
> for kobj_to_dev()
> ./drivers/scsi/scsi_transport_iscsi.c:4043:61-62: WARNING opportunity
> for kobj_to_dev()
> ./drivers/scsi/scsi_transport_iscsi.c:4312:61-62: WARNING opportunity
> for kobj_to_dev()
> ./drivers/scsi/scsi_transport_iscsi.c:4456:61-62: WARNING opportunity
> for kobj_to_dev()

that API is not new, so please in future stop writing that. And 'new' is 
a time-dependent term, and not appropriate to use anyway.

Thanks,
John

> 
> Reported-by: Abaci Robot<abaci@linux.alibaba.com>
> Signed-off-by: Yang Li<yang.lee@linux.alibaba.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4fa2baa0-8727-9e72-eb42-db773401b8a1%40huawei.com.
