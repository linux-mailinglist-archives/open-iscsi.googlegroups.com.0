Return-Path: <open-iscsi+bncBDGIZD433YCRB44DXXTAKGQEY6ENYVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 232F614234
	for <lists+open-iscsi@lfdr.de>; Sun,  5 May 2019 22:05:08 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id f6sf1863459ljg.12
        for <lists+open-iscsi@lfdr.de>; Sun, 05 May 2019 13:05:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1557086707; cv=pass;
        d=google.com; s=arc-20160816;
        b=cAH0Z5MgjHZiJwy/oeeRouV8mj3UDu4y4Y0jwyt0Uy6jED2fV6Np1d7bVEXSUDZ8m1
         W0MdM243aYphJOvgR38zYGvJ1YX1hQ/++2wQkazglcoonL+b6KS3VEwEF57PZoANkIoM
         tTkWyoMKbfNtCwltbn7+NU918bxR00EcaSewRZcn5iLSUbdwOCU20gGYOccb22Iacwi5
         qQt4KWw3kwFWHdSCfRKEo0YJql71I65QIAihwjdPopEz/QV4xBsPfaWhb383hZYUT8n+
         jq2/jdzw6m84QrL5orfIUC7csAmodTywJXVxkmR2MMkSG0ve2+Gz7XCUoRO2UJxRga1J
         PTbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:reply-to:sender:dkim-signature;
        bh=6YzRPH7K4DbDPfQ7Ls9L6uLn/nGF9hHBDyEVMlpwauA=;
        b=DHRVIpEnZ56vtoo9iUne2gLqGglw/k1iNpAqQt134CfGHHhGxYn6+uxu7cK/7p2f9y
         KICg1UXUSLE2QN7rqkfuYAoR+dHhWE4b6P1kanxFuqCFikVsA08Zd4n1bfjpr6Q5A7Xm
         YoPddMYS2c9maG0DKtFFVBzWFtUejTwVjYo9eTcJ28b2RhWtfAs6unnhZ3F1vJkv9A8D
         2f+SJ5vguFUKy/r4NzHNrhWpbJOsRkPhmGy43Iz2Dtr4IjF2cW/ezWTkXKgsVl7nlWQ6
         SLQoVw17QYI3GBc9PnPTi6Ga8QvPI17jAuHjNjnTbx+eswweYdMc0HL+dlxUFpj3sjkE
         cfvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:reply-to:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YzRPH7K4DbDPfQ7Ls9L6uLn/nGF9hHBDyEVMlpwauA=;
        b=nPoTJn5Dg0Rfl8R+6SCd0YjdpVYqZH9R/4Fn1ngyLsKtgdl1yxszJwmySDH8YLy15m
         5B8zge6bd1BBtxdn3xUjb2RQ5rE3DlhzVk1+jVT/rkPYUQerzM0Kseh6NLKMAqHnX6P+
         VHjCifIw4sCxZ+N7S95D1sruUPjQAAbbNRNBdXzEqaePF5IOuQxNgcHZhiwdZvx/rmnR
         0lvsKSA8O8cmY9P8kz/v9kczBmLqCI1jrIKnl3CIpYwxCdw0PD1C1CozMAsKc51OcqiC
         yklxeMr5ZJtThS0McbehLXca7sIV4HcdJhBsc/jz22g4spLI2ZWc1/HTMaOw77tsLe+b
         4wig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YzRPH7K4DbDPfQ7Ls9L6uLn/nGF9hHBDyEVMlpwauA=;
        b=Q6w8b5GrK0qwik7mQqzocSXHTA6nCQ2j4wX+hSe88N/GwmXGxORXlU2KxKgRlmw4rd
         6CUo597COi41YgVVMbx1wrzK6solngfnLRvCgzNJf2A80FGfOC7KIOwJEmiqT1AwIitC
         QKLaJgMl1WVd/lqAi738zd/+FfRdzE49HFXXugkWmGhnqW5Krh5HafzER4jFUKCaGCMo
         qofzij689CZslf+Stu2B3gOyZQnXeJSGa8scT7cuQmyhXpOmHhPRjsHU6zK/FIOG6nDj
         cyHIw/VO2UI5ATM0+4WLgo0gjqtP75Oz5jz1X4sOi1ta+jqk8LVMsHl4gAOMe3hVcSC3
         Cewg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUePrtZMscUt7Ur0RuMh3ppCJc7Zk2kLJxXyWSD6AzwWl/Kxq1N
	ZdkwmaBifGfK8zH6VoMhy08=
X-Google-Smtp-Source: APXvYqyZWhaut9x+c7yJBa7FEfwaZFbkovhURbwPpGmwOFWIx1aAYXwaZIwrlCs1vqjxvMzfefLyQA==
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr11450594ljg.145.1557086707601;
        Sun, 05 May 2019 13:05:07 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:539a:: with SMTP id g26ls883533lfh.12.gmail; Sun, 05 May
 2019 13:05:06 -0700 (PDT)
X-Received: by 2002:a19:40d8:: with SMTP id n207mr11350199lfa.70.1557086706779;
        Sun, 05 May 2019 13:05:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1557086706; cv=none;
        d=google.com; s=arc-20160816;
        b=D6fhdMcLzz9IfT0ch6LBT28P2qrRFi5axrs8l7R/pjQh6IACkrQXSgNYpTEXORwolB
         eT0cwlXhWLq9i7kanTtzrRdAaTD9e4m3a/MBLCU/V/E7lg8bOJEX4puuyS+OYygCCyq9
         Kuo/F0GN6uIiAqwr45VICJZHqlOQKXUygmyfPxriG7KUZ/yH+PA67wKKJ0cLS013IFQu
         uO0UgDX2g/O44teyhxQAhrWEQmEeU6b6V9+CSsVDOo4XyVHaKbridy2oWTsY/gmQNcdg
         sOIfOGZ4tiXMLJo52Enfoe/KP9B6zrO+sGqEongZalxvsThBQWp4mAIcnxDRaFtMgxqp
         nNng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:reply-to;
        bh=2aEpPU2j4zy6ixUlrv8NTA4P++b3moiWnNZO0iFerUs=;
        b=dSJ3M9h7TYa91MG7dmEzNjQWcKZoI2yQnFriV9mB6V1JhlvGlv4MUF5bb8+HutPJ/j
         enCLqDiDl8hPh69pQAvfNHWsE5DSP4yi7btWo7DkVSlqv74NI6AY2n747Lr6nfTDQOg1
         sO0ZqJfDBP+FYOyIiqagYetZkzECeSFq/trLahyU5FSUdTJvRLcUL0zay5PW9srFIwkx
         +P6gup/5XwlczmWuevT6J03k7qLIuDRKVRQM9gkDQ1o0GYqodZz0FIfrmNa/8NrDeeha
         7F0l1s6wwxmmS0jK4gd426bMQi7rCw1mpazGs/GqX/+SLNTmOhVkAz4jW4tEmUbRgiNM
         +5ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
Received: from smtp.infotech.no (smtp.infotech.no. [82.134.31.41])
        by gmr-mx.google.com with ESMTP id p12si188248ljh.5.2019.05.05.13.05.06
        for <open-iscsi@googlegroups.com>;
        Sun, 05 May 2019 13:05:06 -0700 (PDT)
Received-SPF: permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) client-ip=82.134.31.41;
Received: from localhost (localhost [127.0.0.1])
	by smtp.infotech.no (Postfix) with ESMTP id 4051120423D;
	Sun,  5 May 2019 22:05:06 +0200 (CEST)
X-Virus-Scanned: by amavisd-new-2.6.6 (20110518) (Debian) at infotech.no
Received: from smtp.infotech.no ([127.0.0.1])
	by localhost (smtp.infotech.no [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fv7CIxAIjNDX; Sun,  5 May 2019 22:04:59 +0200 (CEST)
Received: from [192.168.10.165] (c56B33E56.static.as2116.net [86.62.179.86])
	by smtp.infotech.no (Postfix) with ESMTPA id E8A17204152;
	Sun,  5 May 2019 22:04:58 +0200 (CEST)
Reply-To: open-iscsi@googlegroups.com
Subject: Re: [PATCH 21/24] sg: switch to SPDX tags
To: Christoph Hellwig <hch@lst.de>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.de>, Lee Duncan <lduncan@suse.com>,
 Chris Leech <cleech@redhat.com>, Willem Riede <osst@riede.org>,
 Jens Axboe <axboe@kernel.dk>, =?UTF-8?Q?Kai_M=c3=a4kisara?=
 <Kai.Makisara@kolumbus.fi>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, osst-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-22-hch@lst.de>
From: Douglas Gilbert <dgilbert@interlog.com>
Message-ID: <4285486a-b30c-300c-e794-e74999b15fb2@interlog.com>
Date: Sun, 5 May 2019 22:04:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-22-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-CA
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
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

On 2019-05-01 6:14 p.m., Christoph Hellwig wrote:
> Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

This scripts/checkpatch.pl noise seems to be related to the patch below:

$ scripts/checkpatch.pl /tmp/t.patch
Traceback (most recent call last):
   File "scripts/spdxcheck.py", line 6, in <module>
     from ply import lex, yacc
ImportError: No module named ply
total: 0 errors, 0 warnings, 98 lines checked

That happens both in the mkp/scsi/5.2/scsi-queue and the latest linux-stable
trees.


BTW Are C++ comments (as used in this patch) now permitted in lk code?

Doug Gilbert

> ---
>   drivers/scsi/sg.c | 7 +------
>   1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/scsi/sg.c b/drivers/scsi/sg.c
> index d3f15319b9b3..bcdc28e5ede7 100644
> --- a/drivers/scsi/sg.c
> +++ b/drivers/scsi/sg.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0+
>   /*
>    *  History:
>    *  Started: Aug 9 by Lawrence Foard (entropy@world.std.com),
> @@ -8,12 +9,6 @@
>    *        Copyright (C) 1992 Lawrence Foard
>    * Version 2 and 3 extensions to driver:
>    *        Copyright (C) 1998 - 2014 Douglas Gilbert
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2, or (at your option)
> - * any later version.
> - *
>    */
>   
>   static int sg_version_num = 30536;	/* 2 digits for each component */
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
