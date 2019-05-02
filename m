Return-Path: <open-iscsi+bncBCHZVHVFVMARBMURVLTAKGQEZ57NQGQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 636BB1130B
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:05:39 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id u26sf158832lje.9
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:05:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777139; cv=pass;
        d=google.com; s=arc-20160816;
        b=rCUk/ysYNjzewBNqOkVy1pdLvzvpStqFAcuCrsrjfRcT0HB+ffy4g5c+m9DLWF9v1k
         PqGjWXv7qwO8aoDy9yT07+F5L1Vrj4cqIU/SRaczyN1XPAjVcOYHKOJsuheoWyJkHJPh
         NvPwPSINwXuUWOR1gC74BNFYe2fQmbtWIWrh/gCjnNyrntT/I5aE3nS+aRhmRkFDcvM3
         pwPto1i3zw5w/RGn7EkwWqm+Lgh8acfnHBvawrS0NDGJ5u68vukULtxP5fCsgM9Ws2SD
         Fo4cCqrA6x+HUHi4RB3dj0FqKQ0bDWOiuItnlt0eGfo2LGV3U5JzQ0uLnRkrLR5LF8Zs
         In8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=y4+gLWJkIVyrTvlBiwDJAhBgNeCE/eRG3V2LX89mBC8=;
        b=Okhr2F+276EPdsZZOm94cRdQxEjnaNUiA7XCqPc4AD98SlOuv0Gss783pxQ8P8Ntqa
         /PwLG8L/PFFhsYyu++IPeBzkoVrYXcsFHLqwQE94TDX5fzOlk3BIkBaKToMk7oTe4Hjt
         bj72b9QI5qm1TljRxdwMyb8OEqY1279/L/e1FKW3UqEom+Z7dcxXUAZzFCRgc2o/GUvC
         zoZSbBPKvO62MqloAM55vchrip6uY3DSILMBeOupFq0yMj4eFtMwZQuzfUUysSleiEXR
         J9D7yFmwZ9skEOuPzpqKUSIcp+61xoR3Ozh0Ed3CKnhuejmxP89zE1F0w3kAz9JR+7QF
         tnvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4+gLWJkIVyrTvlBiwDJAhBgNeCE/eRG3V2LX89mBC8=;
        b=oiCcnjueSzCv3jwUbjywziux3M4B8bJe/UDAfWtxtAkMr+/smz6R6tDkkhOSIZVIfu
         JGalzni1KyrqGiIiLBi+8U8UoOc0ONf23cVrOWnPFuMD5z52fGEG4fPVJtjvyWbwXXEX
         I2mZkpeRlR4fQOAVtFEX7KSgTOmDVh1FxgBl3voWMLNSRjQ/7nOIs+B9LriHEl0sBU/q
         0F1AgCo2FrmeZfRLu2jBw54THp9FhdJyZG4Q3at5m1UXonvPhEQPdAlBMHvz7Sq106mn
         kx1B6WLxtBJUxFCNpGGGs2xapDpswHH6pLqOwsVoIjGOgGmiCg42G9lFdR1RgmA7k5F1
         u2DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4+gLWJkIVyrTvlBiwDJAhBgNeCE/eRG3V2LX89mBC8=;
        b=qo8EfHyo1SktYjBNIwXTtyMnuQSTlyjDqL29oUyIZLBEhs5v4EG77h1yXE/HP2X0JX
         ofaB9xY5FBhhaMxncqkepeE8LG9UF+698f1LdGpMMUIdhhLk1K+hlGzlkYlyB2/JxnMK
         CCZqbI0usMxcZ0zJn0OcDeKivCPG5xQ6OI3v6pNwJgGBIS88Jsl/pfUbFyVZ62XBFFIQ
         yJiW3dJ1c5nfQmTrAA+oQ4LMBG7d8QdaNf0lMUGb2fNnxVnA0sjoncdz4VPBDh1Ow1tj
         mXr1g9g/OMlTF/5SmHcLdmy27Jv1CK1DTHepbeHRpUCY15ToKBVDnHaTxgMmu5p6mVM0
         0d/Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVQskwoZ7ejvvDvKjXn7CzPHxskl3KEO7xXm0egxR3CAaMUxjYQ
	MhZO4mP5aDOgt2lVgvNyRmI=
X-Google-Smtp-Source: APXvYqyMA0GDkPBji8izVQ8RyDxPGG/xYn6xO/hNc0+dzEYR07x4HcHUE6nqNgMCZ8eBhL9AJvbHEQ==
X-Received: by 2002:a05:6512:309:: with SMTP id t9mr888040lfp.103.1556777138995;
        Wed, 01 May 2019 23:05:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9c54:: with SMTP id t20ls92040ljj.9.gmail; Wed, 01 May
 2019 23:05:38 -0700 (PDT)
X-Received: by 2002:a2e:9c89:: with SMTP id x9mr779924lji.28.1556777138691;
        Wed, 01 May 2019 23:05:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777138; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgubuJLzGCAoegcc88/clQAC7+8rHmul6i1GXTuP7vgGKYavh+ZJ4RhX1OkGRMbczr
         HYbSBsz++Mg3zyZp1nfdQp6QG0QvgDsNlH8INZAFlpxvGACGyo62kZwdxt/q2/qvn1Iv
         MVYUkMf/+rl9kIVACvNeVknhF8cBDbHn7jFx2kmjO2bBcPY1R25pVi4j7fdQSngoZNKq
         keFpj7Rfq0mfYt6unUAjz+Tjqeie3kvmU6YmDDAoBsC/w0ERw5TKYJTHM75BrGjE7o5K
         eXCW78VLNAdYGUFPc3UEilpW0rXAJq1EyVzzszDS0EHW/Tsr22L9eWtcbnbAn8k4k89P
         k0ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=9ThfSbheN7OkiOGQbliHUYDCVmBYFV6QTRWerbxdSFs=;
        b=nw0r5BvN+XUxHGrklgjNaInm0d8O7fNVbrZCgHGqe4wn2Dvis7F9apolRAivxZX4eE
         R0Ul8U2WljV4xwxcYjUWRGbF5bEhs756nwCZVo8+sNDElv4J4QQu9T++2SNmdQQH9Zdi
         3H6YiFcb3JXgdV0kfX+S8TkIXpzAnMO9TXB9MXKCaMdU7MkWjWPvQXI+mnUo7ECAOURU
         o/HV9kKLKCM1VYKAPu4zUSZ65ceaDh5/MHPANNYkczfj2kAeX2txfWke8eJfLlclFHal
         ptYkEW1o87S6QS29pL/yB96iNN9kkVXqwPVrse/YrEBKr1G68ER13ww1+IvIFKlUAIgT
         AX+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id m25si1541849lfl.1.2019.05.01.23.05.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:05:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 1D62BAF8F;
	Thu,  2 May 2019 06:05:38 +0000 (UTC)
Subject: Re: [PATCH 20/24] ses: switch to SPDX tags
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
 <20190501161417.32592-21-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <84efdea2-1dec-41f6-717a-97415b2c8822@suse.de>
Date: Thu, 2 May 2019 08:05:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-21-hch@lst.de>
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
> Use the the GPLv2 SPDX tag instead of verbose boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/ses.c | 20 ++------------------
>   1 file changed, 2 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/scsi/ses.c b/drivers/scsi/ses.c
> index 0fc39224ce1e..8afea5a1d3f0 100644
> --- a/drivers/scsi/ses.c
> +++ b/drivers/scsi/ses.c
> @@ -1,25 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0
>   /*
>    * SCSI Enclosure Services
>    *
>    * Copyright (C) 2008 James Bottomley <James.Bottomley@HansenPartnershi=
p.com>
> - *
> -**----------------------------------------------------------------------=
-------
> -**
> -**  This program is free software; you can redistribute it and/or
> -**  modify it under the terms of the GNU General Public License
> -**  version 2 as published by the Free Software Foundation.
> -**
> -**  This program is distributed in the hope that it will be useful,
> -**  but WITHOUT ANY WARRANTY; without even the implied warranty of
> -**  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -**  GNU General Public License for more details.
> -**
> -**  You should have received a copy of the GNU General Public License
> -**  along with this program; if not, write to the Free Software
> -**  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> -**
> -**----------------------------------------------------------------------=
-------
> -*/
> + */
>  =20
>   #include <linux/slab.h>
>   #include <linux/module.h>
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
