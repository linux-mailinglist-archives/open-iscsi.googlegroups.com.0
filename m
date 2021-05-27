Return-Path: <open-iscsi+bncBAABBTO54OCQMGQEA2EUK7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 646EB39A3DE
	for <lists+open-iscsi@lfdr.de>; Thu,  3 Jun 2021 17:01:35 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id n3-20020a0cee630000b029020e62abfcbdsf690575qvs.16
        for <lists+open-iscsi@lfdr.de>; Thu, 03 Jun 2021 08:01:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622732494; cv=pass;
        d=google.com; s=arc-20160816;
        b=S0GdaFgRZjCIkuiZDL8ghQSK5HlJU+3gT0clIMN//B5CISjtDUqX9MQjd99tllT22p
         3XfIwb+4IuUHnkEXkm/WPdssq5SW0Sa52VeuOT148XN9DhdD2McdBRhB3LWmId/bSJW0
         07Iom6tVhcIjjXPqsJL8sA7hNKmluu++dPS4QqU0vwDajWKsW7WxsriC22bSaXACgtdz
         oHO3DSO5oZBdtpeGsM1KPXsIOo5BnthcKMhFhMR7BNT/JSynL+oc70J8MJDeCYuYxBev
         t8NQvYNoDY8yAHMZQatkY9kz3AgiRniZl3xdat9EDdedMtfzaLEBMYtTuvVPPs1eUrxc
         psGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :to:subject:sender:dkim-signature;
        bh=094QETp5QdFYaJJtVtwAQBzZSeuRwQGxlqrHh7eEZRQ=;
        b=hoPrc6RS5NW14l0F1EOdDAPLg4t+hORrMUlzoDmuuIjT1i7x+CbdpojDZQ8vwBB/Hw
         7VHV1uckvSLH7ZtU3ZzNeH1Rs77Op4eqAKmKenKMRIHeh7ys9t5x611gBrEzPR7fVZKm
         NpxuAl42I1E3Uz01s5Hd5fm2boy62BL8r+1a702hY6cVh8MVn6aZKxva4EAymPYCGDiR
         uc3H73O4r9739GO6i0pT1SGwJWluYkh4im5SozPI9HzX0dEwx3Fy3/kGPElrvdOqeNZh
         4wBjzD2SAlnWrpdUgc46frm0eq5cy3J8Tode0wAsjm9n6SSSDwcPOLaBTVsFYCU/5OOZ
         F4HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=094QETp5QdFYaJJtVtwAQBzZSeuRwQGxlqrHh7eEZRQ=;
        b=gcGQS2AWRyieY0zFJVJQSKEQ1/lU7I/Ce1v+7Y0pCyfhksDXEPUoA4NeczN+z9dun/
         TBAfbk00TDVDZ7lh8/qu8C/D9RJWufDLDUGuU9QL5i8jwxuBP5fuxN4SrV4oeVcGzAbY
         8jHc48Mh/0LNOIJ6G2SB5f/ilI+gpnSIP2EuzkVXBD7YQ/lqenx6Q7m4rNvvyS3xdrRr
         TJb2+8+M0LvO3ggsixix2QCigBuI2TkBJCl2kKCEx/a96zwIXgoa8kYNWKOlbbvHk84D
         d0wWpBT8DNog2JZciU5wsw95C7uLYISmi79rXmn3QOBcG5HMZge4Y6k/BZh/mDY9zKUH
         sbGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=094QETp5QdFYaJJtVtwAQBzZSeuRwQGxlqrHh7eEZRQ=;
        b=kM76Q1guEhPa10KEwONf+X0ryiMUzYyk+bVPoJqAXs+qd8fRZijQOfiliMYDTlQqcG
         oh5VjFfpBs4hP/LulL+6McxEEYudWcb+IwFpdx6rLExa/Xo7YTCpmS5xpUiLhs9ljF6F
         NDYGW3cajYATeV/arXXNHe/JvMFm2/ZdoXelWWKM/Q7y2cToDT9K6csaJ4znn72BczdD
         sR3xblxdWO1jbisoDJwBh0iy9nbejwSGcedaPqHcX3jsB8bCjXIg0qoShBDcL/IX9HM9
         Ieotcgq7oiaQJLayAF7VXDmSvXkwaydyiFSC/arkLKSxwsdu4Z7SCMwpsTMDWd8poHmm
         5myw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532pdKIKOQ1fTb6eHdmPsRFqeILipKR7Qk05zQF95BJ+tSSgPhNx
	Nx9LwGRgZrbVkL5dOXFzfHU=
X-Google-Smtp-Source: ABdhPJyVgaBn0GKHrX4iGg9/o9ffHhfYtROnrvNs9RoOCPP9M5SzZUYpHh2ETH7p+CR3UsoB/n6l2A==
X-Received: by 2002:a37:8403:: with SMTP id g3mr33362511qkd.469.1622732493991;
        Thu, 03 Jun 2021 08:01:33 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:180c:: with SMTP id o12ls1245280qvw.5.gmail; Thu,
 03 Jun 2021 08:01:33 -0700 (PDT)
X-Received: by 2002:a0c:ff03:: with SMTP id w3mr294517qvt.6.1622732493535;
        Thu, 03 Jun 2021 08:01:33 -0700 (PDT)
Received: by 2002:a37:a50:0:b029:3a6:3d2:85c6 with SMTP id af79cd13be357-3a6a3f6861fms85a;
        Wed, 26 May 2021 19:12:17 -0700 (PDT)
X-Received: by 2002:a05:620a:1359:: with SMTP id c25mr1226224qkl.228.1622081537641;
        Wed, 26 May 2021 19:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622081537; cv=none;
        d=google.com; s=arc-20160816;
        b=UDyt44vS3IYqJ4mC6cGBzNqg7CxindIPL+Frjh0nlQB/vteTGNbjOcXZIM1U1J/buJ
         unsjerhJGMEv5xVz5jjFTKk/fidmjX1EkNNKO1+Viy02EEkKpP1Lj3MvaYFFw9PA5x/t
         mxFharfLq1nHPA+H6KkCwfVHS+fD0JwSEOKlbpWI5gJdzobLVTvhqEgD5IwK7/w2lBXs
         i37F/XVqgZpgsMBAeflDtfyp7w2lPcw5igLqKI9SiCuFNXdwy4UOFCjdnjsw0bg9+h+S
         Ek+WOwqEDd2d6s4wgGDN+zxn/1zmpmZmgO6EyfYml38Iho3Cbh2y5df6eccyiRfEAGFP
         /H7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=jUOQnhypCROdqlb2PwDNTvjKXC+ZGnUJ9uKoaaBc5/g=;
        b=BpQOb4MsbfK6R/ga7i6wUL/BokF8nrusmJ+ZguAhF/2FbIIkRLAR9fz30wC4OKjQPn
         XIP/ZLsVJIPTT9YLIR4ZkwtvN4MhOQNUm2uzy9ms74eUz2R+TnBqEq2wj2ve6QP9K0Mi
         n0QpT8g0fmtLnWna0p7qwmA8jyXnbtLwR3s8f4DpPqGnab8FvH+8MgvbuWJoJ7oEwtdu
         3ns7y+IErhjT3xYy2/0mohY/1/zCnBY8VuetHZiu99BHbxxWyyzlGd7fPkR6fMnlMT+6
         +kYJraM7z+AJ3VkzUQEIoiXstNNcZ20yKWuZ0KeW1jrZ4AIZyuAfgKenD3mBz/kBtb+7
         y+ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id x24si78956qkx.3.2021.05.26.19.12.17
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 19:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from dggems704-chm.china.huawei.com (unknown [172.30.72.58])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4FrB7k5sZkz81Qq;
	Thu, 27 May 2021 10:08:50 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems704-chm.china.huawei.com (10.3.19.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 27 May 2021 10:11:43 +0800
Received: from [127.0.0.1] (10.174.177.72) by dggpemm500006.china.huawei.com
 (7.185.36.236) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Thu, 27 May
 2021 10:11:43 +0800
Subject: Re: Aw: [EXT] Re: [PATCH 1/1] scsi: Fix spelling mistakes in header
 files
To: Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>,
	<open-iscsi@googlegroups.com>, <dgilbert@interlog.com>, <jejb@linux.ibm.com>,
	<linux-scsi@vger.kernel.org>
References: <20210517095945.7363-1-thunder.leizhen@huawei.com>
 <162200196243.11962.5629932935575912565.b4-ty@oracle.com>
 <60AE2272020000A100041478@gwsmtp.uni-regensburg.de>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <215847b9-f64d-8cb2-e53b-13123770ca1a@huawei.com>
Date: Thu, 27 May 2021 10:11:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <60AE2272020000A100041478@gwsmtp.uni-regensburg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
X-Original-Sender: thunder.leizhen@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of thunder.leizhen@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=thunder.leizhen@huawei.com;       dmarc=pass
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



On 2021/5/26 18:26, Ulrich Windl wrote:
> (Amazingly I also did think "busses" is correct -- seems to be a common mistake; maybe only for Germans that would pronounce "busses" differently from "buses"...)

I just googled: busses or buses

Busses isn't a misspelling, it's just that few people use it these days. The link below makes it clear:

https://www.merriam-webster.com/words-at-play/plural-of-bus

> 
> 
>>>> Martin K. Petersen 26.05.2021, 06:08 >>>
> 
> On Mon, 17 May 2021 17:59:45 +0800, Zhen Lei wrote:
> 
>> Fix some spelling mistakes in comments:
>> pathes ==> paths
>> Resouce ==> Resource
>> retreived ==> retrieved
>> keep-alives ==> keep-alive
>> recevied ==> received
>> busses ==> buses
>> interruped ==> interrupted
> 
> Applied to 5.14/scsi-queue, thanks!
> 
> [1/1] scsi: Fix spelling mistakes in header files
> https://git.kernel.org/mkp/scsi/c/40d6b939e4df
> 
> --
> Martin K. Petersen Oracle Linux Engineering
> 
> --
> You received this message because you are subscribed to the Google Groups "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/162200196243.11962.5629932935575912565.b4-ty%40oracle.com.
> 
> 
> .
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/215847b9-f64d-8cb2-e53b-13123770ca1a%40huawei.com.
