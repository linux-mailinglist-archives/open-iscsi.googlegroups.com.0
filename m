Return-Path: <open-iscsi+bncBCHZVHVFVMARBUMRVLTAKGQELDG7OPA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD0311313
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:06:10 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id x13sf201101lff.23
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:06:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777169; cv=pass;
        d=google.com; s=arc-20160816;
        b=ERn+5EylMl6EUJbzXE7rQUjhQ1eCSfcsfmA2TTYNE9y5DbM7/xA+0XXqXPT1kFZ8OY
         eFz95eMjE+85sMOwI8xPllwZFHMe2pAXacJ0PvWg8yVQjKUumEs8ugpVkG52oEluR8+/
         Lp3lH/SEeN4pm6EsdkjKfCrgFQdwnsW5hBT3JpPIaKN8MA4yVruF8QGVgbfxpA1KwQv9
         FG3WBDpJBgDtDDaUeVoA0Rr3ZjtMEJN6/sSfg+zaK0m55a0U5/PEEjLniGDsf1mNnA62
         Z7fs7vvAUBsr7C/LvIkoc5Ebr4IzsV6OGvsSthbbx22oo0oLChmselTUJROjV94ytVM1
         uN5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=FIbGLrweM0jhlizMifG0sN9HOWRwgBYLVLa+myY9kOM=;
        b=fUkJGch3R/Gs+dx//AaWuPk+VkIOOQKlIwKFduzoJRYlDzYchdzEw+SZvEOUMMCvHo
         0rGDS29eRNN3ANIa+C6ilk2FPntuqziqFwGdNOeki+yx/VhywdfjrbOCuNwo9wDfXPiK
         VamNRVwjLbu2IzdPfMzdK1czAbuuyAU7SP0UF42HFxaZQjwfx6pXkTN8EphbmTDg6REY
         auNdmS2be5XnCax1kk+CLW4oxHIyjv1pE+HLi4pO1dgWz3bh3sJVh353x45eNAR0/k4m
         KkuBTc/eSGVjDxama5Js0fi1961ATc9wIp8Sxuey24Cz///EDmfZwjAvR0aV88NhS5LZ
         NQYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FIbGLrweM0jhlizMifG0sN9HOWRwgBYLVLa+myY9kOM=;
        b=gvEYHehqdCqz/jKnOFa0zbmaZcur3b3gw3IkrJeuKyqKwPbfaPZzM0aiRYU+lgUFiW
         ljndIy/OrfdlmLPbSJyX+bV/Qz+NEZpsrPSmge1wzqv6RGgVxeoupSbBw3fjnoi2SbHe
         acO2tmvQMecyOczjrBZJNVGWuXVMrcWCfSuUU6gmN+ccMqK2feDsUVKqGR92TbUf5hth
         1Or2HVgni6hYSpqztF22ACFVKilQ6PNmLOKw+tfBw+cKaggov94u+uVQXyuYgwRYglX4
         cbU3DQ+PHzO552//upRghYoC7JmncIc759uY35mF0GxQ6v4Gsifya8eX33Isb9trwe+I
         HbZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FIbGLrweM0jhlizMifG0sN9HOWRwgBYLVLa+myY9kOM=;
        b=IY5qKHpA7cEKpjATNfcnNVJClVa6qTajYLGyoDaJbmdhjQ/PmWxmsBC81XQVE6kto3
         eG0ztZKmYIEP/ojk85GlyXkUEX4fo8Z2JvQSjN0ir04iuJ+whaSP3d3osqm0Ay5uGnA7
         7ZwJtYA+bYq4Dujkl+wbQMEiUWIqyFfrxSoqAhyw7tBjviIOCAXbPcOIM6AK3EGPlok1
         LCdNV+gv492x/DLzrOxZz+Rs5RMUysEacKVyqpi5vTv9w6Z7cD1q0ONsSpm0EOiryRQP
         x6XdCqt3XF0N5Ci5os/rn+oViYhyGNXRKkAQmIlPuNORNp88cm4WsmEjVUCg3UMA/giM
         W5lw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVZh8+s3qZ85qZUK70Nzzo1+NnT+z5Zna2Nyrr9gvPlOjh4Ilbv
	V6+KDbwaH0QIMoP+ORtfIb4=
X-Google-Smtp-Source: APXvYqy9jCT7cyGoW/0sVJZILGqKkeDSHZYYnn/RCYYJXLUblBtNhnlQU47jrfd9JWoVxPQPm8NGpA==
X-Received: by 2002:a2e:8689:: with SMTP id l9mr850731lji.70.1556777169856;
        Wed, 01 May 2019 23:06:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9114:: with SMTP id m20ls91709ljg.14.gmail; Wed, 01 May
 2019 23:06:09 -0700 (PDT)
X-Received: by 2002:a2e:984d:: with SMTP id e13mr846181ljj.61.1556777169432;
        Wed, 01 May 2019 23:06:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777169; cv=none;
        d=google.com; s=arc-20160816;
        b=XeK0cXBA9oy3hbLFFc8jx9w1W5o4pY5/liPKfq1rZc2F/Jvg5H6XhZbn8wFLDEjhw+
         o8se8R3iX90cd4lkKM37Sa89YjkCQNbdhBfPmk0oORLP52+gMqnJyIE02YkvoHeIigrJ
         ggJ+sFgxmx0AWfs1pfFl/TURpyNZ6DXLtSQRPqezkmOR6eS4bx7JrXDIozXJV9FSlLx3
         YL9cLrzNMZ1QKGpZxTfyoxmfgjHGHejqpNV4ALWkG4rzlID2DI2//nDPChaZ8i6OWDpy
         2MnVPIe0bGVnSs+pCTkcVoOKmLDngHeCyj/8gcVcE3KgGDutH3bBsUf/jOutv1tuZVm9
         6MKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=KuSQBUZXOnXOySUm5a3wF7V0IJnrZDZNSKaSNknTiBc=;
        b=eAXJdcgmscS+0+cSanNv1BprvsPEvFLtzz1ApHUPj49Kne1nR31qVf6G4dD/NZv29L
         xC1GBCtjYFA1WYMeyYcI+CTIFOjHlvQlwOLHdFitwDpQBq9nKVlHee1k1epdD2lkAEAm
         MOeiuVsx2DruU1lIxrYMIDvHjGRV3sF3nKMK/CgCSXy9zInpfMaW68GA8A3zMkGaaLWa
         9FMROMh7I/6g13NOaG7Nt07/tGn9pJt3YyJ9Gzyf4/yM9WbUSAnsK56UoWvURUM5tI18
         uLR27P83Ml//kxVKSZas+LMFDgSk+6FR7bookZZAZlZPRUpIYQRv7ig9hIaUxGRJjF89
         c8ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x1si490023ljb.5.2019.05.01.23.06.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:06:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id D574DAEDB;
	Thu,  2 May 2019 06:06:08 +0000 (UTC)
Subject: Re: [PATCH 22/24] sr: add a SPDX tag to sr.c
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
 <20190501161417.32592-23-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <8148c56e-0ba3-9871-5804-1da28759b9f8@suse.de>
Date: Thu, 2 May 2019 08:06:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-23-hch@lst.de>
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
> sr.c is the only sr file missing licensing information.  Add a
> GPLv2 tag for the default kernel license.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/sr.c | 1 +
>   1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/scsi/sr.c b/drivers/scsi/sr.c
> index 039c27c2d7b3..701d1e68d86e 100644
> --- a/drivers/scsi/sr.c
> +++ b/drivers/scsi/sr.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>   /*
>    *  sr.c Copyright (C) 1992 David Giller
>    *           Copyright (C) 1993, 1994, 1995, 1999 Eric Youngdale
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
