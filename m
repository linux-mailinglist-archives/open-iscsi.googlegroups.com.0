Return-Path: <open-iscsi+bncBCHZVHVFVMARBZUQVLTAKGQERSYESRQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E94112FD
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:04:22 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id m11sf159208ljj.6
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:04:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777062; cv=pass;
        d=google.com; s=arc-20160816;
        b=jq1NEzEdHwIG8YmtCfE/eQfj0iRuaEhKl3Y/P7PaDmMvxyFFXChcrgwT4zeM68hsrr
         495/0LpfOrSr3veX/IHVr/wz5XKOOWq17GuXmxhbaYOADZGIQ3nxFT0CVXua/SXx9Dwj
         yNOAFyLoCbEhu2OqPz13/7enVX6pYsLYd5eDfe6RWkqER5dtUJU2jS4/gfuuRmqW/5mo
         ol69TcQOVe5q8sh8tdUimsVgo68J/pr0mbdS2WvEYWBL2GHJXef5SZflIua9POp8z+BX
         YJiIbTfBJXquRIIIPWmovOiS53Pc0tPN0TvKmiusdswCU679m5brdAR9A02kSNzX2hhz
         GTQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=/6KjF8znHX9y3QegIUbtAMkHonZCq6aLDN5lHUebzLo=;
        b=vHnKbZVJDy6x9Ynl3WkUCPbSnx1G3Q5JTt4TFs06+LCTrj21ksJIKSMDLoJtjVz4fb
         +RlF0+sdFwsY6HZSxhNy7GW7IWodDdkDwAq3BHYMSveAYqYUgSSjpbT4sD102BfaMMeq
         EJo9iToQd4QnZ8cG0O03FjQ7KHUteXbxMllR2rJkQuB1U8HQS+BzYqbVAsqShWxiIf4X
         9bz7rJIKR/bSdPswUrZw9X4T2x58+qq70KQRWiC/eYqyBCCqKPW43k7u21W4OB3B8kwm
         XydYlcT6WiDq2OFNQyuoOiXppsIQM4S2BJyeCfkl2xgifVzXnTe2+bLChgBduu2nitMD
         69qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6KjF8znHX9y3QegIUbtAMkHonZCq6aLDN5lHUebzLo=;
        b=g2KBNb0DicEYnDiVR6VhK49+fu7GtqwWVPIJYSUYSIIsWpMikup+U9gNISNQrytzuD
         jTilzVKdiZyPkYXei2GhE/Y7qhh6fVTckDq2/rmuZQovkUnCxe/CqBG+Sts/VbaS9kL3
         yCR7Z2de2h9GJ76sYNzH1AFvMrqRS/0n8nNmdHTYZIelz/YgeWXAzDbkym7sRCX9yws7
         hRqhClM0hopVMHQISPgGmtpQdT239uz9SuM7MFlMz85powHZ6IH70t8ZBlMa1oIubeTa
         AzRvvWzHUqxXP29L46t6GZykToesiK6BmYEP0Rggh7znpEWCl+5LYqhEpzc6NUj3TYgb
         r8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6KjF8znHX9y3QegIUbtAMkHonZCq6aLDN5lHUebzLo=;
        b=cn0h9tDHmzMyZr1pRZq8EibHQdlsboAMSLPFJiaH9xVw+aFrLVvTkmVwvBLW4zV8wS
         npOSfMQUuYU6JVsnvd1CdpoOJrIfKyOw+1r0UrQ5h5ibiHPOOTZXZyKY3+VKvUDT+6OC
         DSOwM/TjAA4wdoPZACSlmx9heT51p9YoWseCkikFsZHGs2JFty7cRTbrjgRMF0mz06/3
         KW3sEb/XYGuWTcAiBSyR7ULk2J4mxMkFKqVYhE4HPjQKaqOHbF9jbSJzJbRgybGMugHt
         kLc7P3i+9Xr6tSw/JadYDOLEeaMxHUq2IBowXYBwR4ysmmOPordAujkpwvrkYLaBM8+1
         70xQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUYZ1INyhOJh1Utn1JG4Z59To/c7NX8H7Omb4MtPQGP21NRLXdf
	kVbrTEVLkEpCe8jEnL99ouM=
X-Google-Smtp-Source: APXvYqyymgrnIy6y+XQc/GjpbU3pKMqvWoM/a2rYOfaFYeusnngx2FSirHFZFl5LI1WadVaEqSm3FA==
X-Received: by 2002:a2e:88cc:: with SMTP id a12mr836910ljk.55.1556777062495;
        Wed, 01 May 2019 23:04:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:8013:: with SMTP id j19ls94579ljg.0.gmail; Wed, 01 May
 2019 23:04:22 -0700 (PDT)
X-Received: by 2002:a2e:80c5:: with SMTP id r5mr68911ljg.131.1556777062022;
        Wed, 01 May 2019 23:04:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777062; cv=none;
        d=google.com; s=arc-20160816;
        b=DfuVkqRSp45OzobZ/yOFNR0k53EETPrGZzE3WPhR1rXUZHz4w/p3BfktdTxL3AeVyJ
         yJIq4Mqvz769nQEp6X3ZJwm2HrEVSmWy71kGBHDOLzYraMr6ZX+LopN0Z5nYLEa8q8Gs
         2PuMyERZfW9WbOZKQ9uXAi2hRF3Z71bWC/LV/AHUv3WWCSDBYAciufYXJmtgMWHT5ov8
         8sG9cWn8UvYa3/WMokNmlDcNgZfw4IY83cIEUIEI/h+fUJuM/hFe2bsWHXOVnjXQyFSu
         TYzHL/jDMVt4WuI4IaKZz4FBpNlpvQ9rsGT2zWJe6ohUKz75qTnmVIB/bDszil8OS4fu
         8Brg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=urJF/Usf3jdbZu1ZXS90QWu18tFNxqr57ptQUMWtXmU=;
        b=YNoVw5wNxyfTY4vn8qpdPcfuIlFdd9Api8r3+Q1KONj87bCTFXE1gtx3pPFzpCyH5I
         peXZcQ86KVd98jet1G9sGS/Yjee25PZxbD0lsErIxF0RbrjuAlplhauvDenPRELnXXnK
         A+7gVg7bU5Mpyooetl8DJSQ5VuoZONCNx0M31lVId7NJU8u8hvXmxtOSfAknFThgJ5To
         iVP76m9go45pyK5Ko4oHt0L7C+MOT8XuKJ7fDEAxMHyxmh3Df5cIFH68pIzsJZ13o3DW
         ItxuLSTbAEZmOVswKT7lgjPQQ6tTQOZDrBm+EsMR9cPcyCiEUXz4dSqbhICMWNSZQyGk
         0FJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x14si74835ljh.1.2019.05.01.23.04.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 5AD08AF0A;
	Thu,  2 May 2019 06:04:21 +0000 (UTC)
Subject: Re: [PATCH 16/24] libsas: switch sas_ata.[ch] to SPDX tags
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
 <20190501161417.32592-17-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <693d368b-785a-3d4b-15d5-b3facd9973a9@suse.de>
Date: Thu, 2 May 2019 08:04:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-17-hch@lst.de>
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
>   drivers/scsi/libsas/sas_ata.c | 16 +---------------
>   1 file changed, 1 insertion(+), 15 deletions(-)
>=20
> diff --git a/drivers/scsi/libsas/sas_ata.c b/drivers/scsi/libsas/sas_ata.=
c
> index 1ecca71df8b5..d9131746737e 100644
> --- a/drivers/scsi/libsas/sas_ata.c
> +++ b/drivers/scsi/libsas/sas_ata.c
> @@ -1,24 +1,10 @@
> +// SPDX-License-Identifier: GPL-2.0+
>   /*
>    * Support for SATA devices on Serial Attached SCSI (SAS) controllers
>    *
>    * Copyright (C) 2006 IBM Corporation
>    *
>    * Written by: Darrick J. Wong <djwong@us.ibm.com>, IBM Corporation
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of the
> - * License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; if not, write to the Free Software
> - * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
> - * USA
>    */
>  =20
>   #include <linux/scatterlist.h>
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
