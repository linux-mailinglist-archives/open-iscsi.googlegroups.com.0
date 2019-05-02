Return-Path: <open-iscsi+bncBCHZVHVFVMARBQMRVLTAKGQEMKC7FOA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EA31130E
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:05:54 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id n6sf1341595wre.18
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:05:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777153; cv=pass;
        d=google.com; s=arc-20160816;
        b=fO/Vn6IIGdbv3Z7zHQcYJFvfdt5R/yPR1V/FFpZvvoUr6bM08MLpL0xnnRvzkff4U0
         Uhc3b3cgxDQv+9o1XXSPb+oikF6lEk8BNHIoXZwHv1Wd5ArtHLu6hCzNmlnZvs/tL+g7
         14EFYtM8PIKXU8nzD/FQgKq3XpexxgQCuE748VpY+1w84mavOiPT0X3Yu1pimi3PCDIJ
         Mq19qmlqpVBg49BXt+NUb+gNXPGyGUGRyK4Q891wNaB9AeYDH7q0Exj60PHFrEOjTh2T
         NwFPF7kp5Y50mUjeMuyYyAwFBoVMfU7ORQ6U/RbRoLMWWZ5R6oMix38cV9W/k0moSLiw
         hz/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=iM3/S3iGzokagmbtzLuR9MgPaFZVW5UzjRk3nJtIEX8=;
        b=DyZvWlWmBt4Elqg3Qe3+QJyIFusg+R2n1Gqzc9JMm1XWkf9xoRgqxIYWO5/HWz0IH6
         Df1vORvQiZzcJJqFJbgu7SNAY3TKlTanvuKKI3gyRzcGfUdc2ZTdZotqhDd5jih80d7J
         Nyr23/bGWB6rIK8hagRaqLsdIShHEAoF/AAv19u31vjqPWVK1p/51gY9iZP5sKdrXVPJ
         qOum3NeUm9C9muaqXE05W+A85BtAY7LJlOv3FmQXywZOfwPpg2qNMI2sGS85P+oWBFUm
         VFVYLaqkHfJtcJL6bzrjBTkaPy9aHuSKGuhNlDZvShApojJrImORLCaROmsL40LYq8Jb
         TufA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iM3/S3iGzokagmbtzLuR9MgPaFZVW5UzjRk3nJtIEX8=;
        b=sffxZTLgQDZ24PvmaDkWJe6KBpvpW/wns6/zzYU9fQgDvgTmt9beMbAZ07AbZoICwx
         secV5OcmaKVZooJIG20jRPb30r6MgB5BFXE07teL602fodljCM1p03gHKgbPSKpx15/S
         tTcRyrHahkEUhiOilPQ9A5bVuCtypKlI1pIwYsPS9hFLfyabHmb6GRZHTRGuF42C9enY
         koP2N86J3+bbCTNM2AYPiA2JEn37A5BWpl1Uehr5nferb9PxSol8/PM5c6TW+WTB99Fq
         Pux30hypEaTG1KH6ZToH8+3wH7YfLJdi6u0kSnod2ODCcbDwTDrum7N2CBwtyMuewohb
         LbAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iM3/S3iGzokagmbtzLuR9MgPaFZVW5UzjRk3nJtIEX8=;
        b=t5dueXSuAOGf/aDpVYTgG48gX4CPBwAYq09cRNQZfQxB9T7tFT+BvCpzDD1GoX/KI2
         9iTTBHe3Cs1qsHy+WBXKfeGrmoWvPBQEXfnkC+Yad9CPKxDNHgoPeyLkBXJK0oKxYGdU
         YxsKV93EdYlgJ2VKMc7zhpY6YKPiOg2QT1irVB+WdPjbawMqdywnOtOj/nXAwlpD4Tb2
         y0e/kKUDfJHwNVXtsT3XHPw02HqxX7+orvnd3cuSBmK1PjgPTXg/EvcUOFpFkyREZsUJ
         tKH4TvnHLZ6nI6qmnbpLy55wT4PGboFJpqD9hXaA+ka4h/3XvpNHXNFcm/c6lMMxT8C8
         f8Zw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVjkKuT0vE1t+AQxMHNf95hOqNFOavbtfUJmOREGGgjVkBm3Fg6
	v02CP8I7wQdnpPReJUR9WUU=
X-Google-Smtp-Source: APXvYqwB+ecsbLjb4pxVM1BTm7UL7RsRmowfYooWVvFVy4qih+oNT8ES4SrqNA4UetrGCb765bpokw==
X-Received: by 2002:a1c:701a:: with SMTP id l26mr942485wmc.50.1556777153807;
        Wed, 01 May 2019 23:05:53 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:8b:: with SMTP id m11ls225081wrx.4.gmail; Wed, 01
 May 2019 23:05:53 -0700 (PDT)
X-Received: by 2002:adf:eb44:: with SMTP id u4mr1277237wrn.83.1556777153325;
        Wed, 01 May 2019 23:05:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777153; cv=none;
        d=google.com; s=arc-20160816;
        b=FXGv8fYdN0Ex2e5WC2qzZhvhGA+RP/zUswcmAcYLjO8QhbtRDvV6ve7uCx6m8o18+v
         hTsF9e/i+AplfiL/Nuuzd7Gh7fMoAXE4s9IR2BT5znnzvGJK2kaIujUF/0QER/pnpdCp
         Bu4ydsIUhD9Fu2zeXBtKFGufOjjoNwARzO9yghQihDS2flN8fu9SbihfqWE6SZ8MHFDT
         fbTWjIntwuSSRPIWcC9PF+/jj7LX8mD1rPTh2gjhkV/PWy0Z/H0Nldf8GkeeotbdTWz2
         ECuIpxRzegfmGyq6mDp/HMr5/Ma1r/4zfUCVvKmjJTyTMhrwtTGtAhpjz5s6RF/DC9/8
         nc6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=T1XY/fiBCz+tarCWRy8ChdCArK0A6iVtkzITALwdzZ8=;
        b=B5TJW0QkL2+ZeMoz0j4M0QTP6rf6xyXjNglhF1xWODuRTZqWcZ8pzrTT1fE/6+0L07
         iGJQ72VTW82Qw4btsLaicaRsZdFyk/ypU6qvOS4Excx3Srau26OEdzeyKjqB4XM4GrBd
         zFBYligVBEuAqu4KxhNJie58kzc3k5HgL1YCFvHabicQNYd/5gzb7T7KOoDgJb+9CQUK
         Eh0ge/ru8O/hhh/ueoJSBwx56pulKAoJFM/8u00JQrKq6bipFwVvx6IttewNxMB1s2oI
         Z/DjKgmHdq68nBsDv6kF6FJr5qXz+4nTGvpoBILHsMtae/nmwW3fu4GYw6+tEoWpctP2
         Ukzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f1si342552wme.1.2019.05.01.23.05.53
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:05:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id F053EAF92;
	Thu,  2 May 2019 06:05:52 +0000 (UTC)
Subject: Re: [PATCH 21/24] sg: switch to SPDX tags
To: Christoph Hellwig <hch@lst.de>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Willem Riede <osst@riede.org>, Doug Gilbert <dgilbert@interlog.com>,
 Jens Axboe <axboe@kernel.dk>, =?UTF-8?Q?Kai_M=c3=a4kisara?=
 <Kai.Makisara@kolumbus.fi>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, osst-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-22-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <39bec0d5-3cd4-3c2b-7b87-5f1be17aab97@suse.de>
Date: Thu, 2 May 2019 08:05:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-22-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=hare@suse.de
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

On 5/1/19 6:14 PM, Christoph Hellwig wrote:
> Use the the GPLv2+ SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/sg.c | 7 +------
>   1 file changed, 1 insertion(+), 6 deletions(-)
>=20
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
>  =20
>   static int sg_version_num =3D 30536;	/* 2 digits for each component */
>=20
Reviewed-by: Hannes Reinecke <hare@suse.com>

Cheers,

Hannes
--=20
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.de			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
