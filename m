Return-Path: <open-iscsi+bncBDPNPA4FWUEBBGWXZTYQKGQEBFZ4E3A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DECD14E2FB
	for <lists+open-iscsi@lfdr.de>; Thu, 30 Jan 2020 20:16:45 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id i135sf2561464qke.14
        for <lists+open-iscsi@lfdr.de>; Thu, 30 Jan 2020 11:16:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580411803; cv=pass;
        d=google.com; s=arc-20160816;
        b=tJe1/ijEeZWj79n/gXA4knCYfx195aigVJ56SPG8KEm4j1Nzx7ea9uSF4rlQRESHCF
         7UNVOgaL33hIQ/xRjrhyTSuKv+LmyRSOg15mGKKHc+XUV0J8a47WP02gSt5HWvriaIMC
         oXeamGGEfHAhoz0k6XeCNPOGKul88IPES74mPIcC2livsWMi2r82hiSA4h60BduvMQpr
         fu1pO7hqNJSz3XGj8/ZMMJT+kdKGq7fr3TFDKkTkE3oRdVdqCfdupaYGFmqF++pr5hlB
         CTwkxR9fSPNJMeGHiq4nshcQWpdSkVlUVe3djzkH+rnGpUd+7HcOkhhwyhDmE+ztlfpy
         iExQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=/QLN4LeVe0h2VMIzy5hSKkNAXRqsSI9lGCTEWoEUuoo=;
        b=y+AgbTocq/UMcGWfGTGXNiEu8jPN5RtoXe7lGuSR/pboUCFigWYzl7OJyK++LRMwNl
         38meedwLb3qkdKvHs3NxI4Tym3UWH+77Ht9IK+tdJlxpIwvc1CTDFBeEUlIt1lVyYu7L
         DTHEUwPnwtr2taylbeksRCpd6nHSNrF5hqsLyK9AQiMFukg/cPJuMOhw/Z7K9VovLBK0
         7PgCJ7yDsNg5PEISeTVw8A9fmwEhZJaElzyCLbOz/lMiQB7GeumwMqFtoNfbsC+VfiTW
         Hq4gkuz6VRHEL0qAxyPDue2sQC+FiPKFlpcLOkH+LxtOIvFmiprQsfiv8euwq135qZhk
         yZhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KdI2Z2sc;
       spf=pass (google.com: domain of mlombard@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=mlombard@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/QLN4LeVe0h2VMIzy5hSKkNAXRqsSI9lGCTEWoEUuoo=;
        b=A/JE58ix8x0ZsbUsHOF/fwfC/rAMxLGtJ2Wx2lNeeoaKPra5tki6YOc6AugdGDb9yc
         riCDw2OZrYg71QKqylvCO7bzMvsRWc55lCXH9k9GALH1QBsA8Sb2vU1ljGX2298k32S4
         VXkL/ORZGDeMYwiK5+daXqGca1S7WnHhZJsVvEA8ePOF4p/7JMmzBFVknrqVeK4YNfuN
         9eUF63ygUp05Ev8AiOZLSucXDwrfWKmQC/l3TsmI9mhy/eER2dqi2c1jADHiiJX/RXrN
         +tkY3nFb6yUq56RvSQc/+tuXDq/sf5lVg98yD4M/+fGTCzB0N1HkfuGy2gTgeUcSK4rm
         pltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/QLN4LeVe0h2VMIzy5hSKkNAXRqsSI9lGCTEWoEUuoo=;
        b=j2o6qK0R7bufMVEZievGPz0nLXJIwVo1QcIheBPFq2WMM9LhThemhoKQBCX/Etwhr7
         qzEewDeQlkwx5ZAQ/Y/LoZeUPSGPT/gcREy9KmFZwSJom9WAGBw1zk5W+mjhoflPpwEt
         3fKuk92J6S9dG+OZSL0Q7PNi7wZv0Znm+mfc/2RNXCxRlLIFqS9HENUg75GIYTBWJhfK
         66Q7nphPEsk3hzaWYfCPHZXkm+oStIAyF3KifNkWvoCkVwLv/p9F6ccop8xD0f9f6Fuo
         AexNsU46P5R8Jd0hfLWxqsgc7Mi67bdEau0aXMkciOdYiuCNoSNgVGRTg9LPWNnUliCO
         bEpA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXc2sm2JbCHn/Nuk4yXESd8wjrSNmi5cUDQLkwPR/DYldZIlrJX
	mcF4WkUhYZlRddjep5K4JBo=
X-Google-Smtp-Source: APXvYqw1fKt5DoTc2/qU1eVWZpjBuwMHF3jvoXhv4xlS11VFm1VdI0Drm2u57gpvNiLpQVJFZpO7aA==
X-Received: by 2002:ac8:3418:: with SMTP id u24mr6534970qtb.87.1580411802957;
        Thu, 30 Jan 2020 11:16:42 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:6381:: with SMTP id x123ls2229069qkb.1.gmail; Thu, 30
 Jan 2020 11:16:42 -0800 (PST)
X-Received: by 2002:a05:620a:1116:: with SMTP id o22mr7026164qkk.190.1580411802738;
        Thu, 30 Jan 2020 11:16:42 -0800 (PST)
Received: by 2002:a37:278c:0:0:0:0:0 with SMTP id n134msqkn;
        Wed, 29 Jan 2020 01:55:28 -0800 (PST)
X-Received: by 2002:ac8:4445:: with SMTP id m5mr26234265qtn.124.1580291728636;
        Wed, 29 Jan 2020 01:55:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580291728; cv=none;
        d=google.com; s=arc-20160816;
        b=C+ZUa9k1I6Q9gpHZOrSqKcyK0aedyK2WqNqb0VuP8bdNtKLGD4fjecMV1snfdD5K5N
         JBtuFBYzNI/ksJNAH41otxkfib2+WLTE2CW/RujWso4mTbP0WokJi1WSFqvXfk5sWPuD
         Gm4h+qKTvYo3vssGrUupJ7LpDvX2dGXsArV43BT+tbE4jXUMukzGXaP4vOjxY4hpDmbS
         z7et4xg/66ZxVMq2j0bb+510GkOdOmr2AlSvEfn9kNDecMaeANvv+hXg+lbQxY3klNKH
         jjL8cBNhzZyI9lf21HbTb9/JQmo8PusHSYKizC/crL1E25Djpa78zWB9KIK6y/J3u/um
         08rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=//b8tVDnnd8rv4rIFalh7eN8NQIfxCydpO1mcGze3C4=;
        b=zwLO6hlv6cY05E+39v78sPwXbGaZpQOCPV5NaanX1YKJiot1QjmR2CZyGvyHH3qTlG
         K4iRHnLQ2HQPqNqm20eDzqnBWjouwpdAVzSbcpFKXGDERyFHsLszOwd7/UntAQyVZ4Ja
         8SBrbtATDDfuCCSiv1oECdRHoybvR0zS6t6urVQl74MCWtjhP6s3qaF6ugZTTytcI9Nj
         WwKQWtsZiwaYWf4/JxNjzv/wzBpvgDfQUiB8BJTwa/5JHb6iuIpLK7UHRNO3ZE2ywxiT
         P9ZYagMjNd0IPIiEwOIP1Pto78jPe5wLX0HTmzvrOk2uLhjIQZA9LeorMqlKU4vFEHoD
         6HaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=KdI2Z2sc;
       spf=pass (google.com: domain of mlombard@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=mlombard@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id g2si54373qtv.3.2020.01.29.01.55.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jan 2020 01:55:28 -0800 (PST)
Received-SPF: pass (google.com: domain of mlombard@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-f1tzj-sxNWKURdsi6oBqRQ-1; Wed, 29 Jan 2020 04:55:24 -0500
X-MC-Unique: f1tzj-sxNWKURdsi6oBqRQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E22B0801E76;
	Wed, 29 Jan 2020 09:55:22 +0000 (UTC)
Received: from localhost.localdomain (ovpn-204-198.brq.redhat.com [10.40.204.198])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 74747104C52A;
	Wed, 29 Jan 2020 09:55:20 +0000 (UTC)
Subject: Re: [PATCH RESEND] iscsi: Add support for asynchronous iSCSI session
 destruction
To: Gabriel Krisman Bertazi <krisman@collabora.com>, lduncan@suse.com
Cc: martin.petersen@oracle.com, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, padovan@collabora.com,
 Frank Mayhar <fmayhar@google.com>, kernel@collabora.com,
 Khazhismel Kumykov <khazhy@google.com>
References: <20200127032450.924711-1-krisman@collabora.com>
From: Maurizio Lombardi <mlombard@redhat.com>
Message-ID: <6a879f56-a86f-b26d-aa0d-e166e42bb549@redhat.com>
Date: Wed, 29 Jan 2020 10:55:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200127032450.924711-1-krisman@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: mlombard@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=KdI2Z2sc;
       spf=pass (google.com: domain of mlombard@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=mlombard@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hello,

Dne 27.1.2020 v 04:24 Gabriel Krisman Bertazi napsal(a):
> From: Frank Mayhar <fmayhar@google.com>
> 
> iSCSI session destruction can be arbitrarily slow, since it might
> require network operations and serialization inside the scsi layer.
> This patch adds a new user event to trigger the destruction work
> asynchronously, releasing the rx_queue_mutex as soon as the operation is
> queued and before it is performed.  This change allow other operations
> to run in other sessions in the meantime, removing one of the major
> iSCSI bottlenecks for us.
> 
> To prevent the session from being used after the destruction request, we
> remove it immediately from the sesslist. This simplifies the locking
> required during the asynchronous removal.
> 
> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Frank Mayhar <fmayhar@google.com>
> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

[...]

> +	iscsi_destroy_workq = create_singlethread_workqueue("iscsi_destroy");
> +	if (!iscsi_destroy_workq)
> +		goto destroy_wq;
> +
>  	return 0;

I think you should set err to -ENOMEM before the goto instruction.


Maurizio Lombardi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/6a879f56-a86f-b26d-aa0d-e166e42bb549%40redhat.com.
