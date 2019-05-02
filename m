Return-Path: <open-iscsi+bncBCHZVHVFVMARBYERVLTAKGQEFNPSEGI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8469011316
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:06:24 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id d23sf1339619wrc.21
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:06:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777184; cv=pass;
        d=google.com; s=arc-20160816;
        b=DKFqz8Xtj7MRn/9E/uJc81oYNyEuo3Chjl4ga7zKKEEq1J24nglsIYW+F81jgc4fnP
         lepbL078uBqx2zXMEad2d6hMIRGrS/GaQnyiEfwW06jLRAjDUklC1O4pva7L0d71kIkH
         nkTb/IIa5EVm9VatpBiWZgYNrGIg9LpDqdtzWzwypJ7DekTA7k/EdmA/hGipeOQQoGuP
         z+Gz70PL0BC6KI0w8XV0KVTt7bY2MRKvdJg6HIh+spKO+K2vTd2H8NPHSe8OiS/FbRdy
         SI2k9t8DZDVAjSVs8aIyANVYfNALdQQbX3k1F8i0ytgS4JxiH88f4JCgwy+oOMOaeRXC
         O0aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=D4Hl02FbOCXxLIfs4uBKv+yZSsKT735EMc7Xxeo5fOE=;
        b=E9n+lUTR8BJgcYJun+dB19wXCXrwWAQ1qewP1eCWtpmTK43Kfp3Ekq4ak/GaOBGQgU
         e/sNJc+KF6Ezh9XYbi0GQDW4ShEj+fgD5Eoy+dngXWpKoBeF0wImu9EIzMCboSFQIWm9
         zIJG/tbIeKwvz1pcmxWfBugdH+MbYOZIARrf4LJRg9JBHSpikPy8ZbtOl21l9G5B1qdn
         erCzDKRUm9rYEHWT5ieSWKobGKMClGlSo3piv4sKXT2t7mYfqPukBfVL3sTmWPULyG4R
         awhvfbtMZubZT0WkCBvQZiQNcNc6BAO2lwGHYF8lJvEdPZJsdgC9GZs32CoZgnP5TfUn
         Yilw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4Hl02FbOCXxLIfs4uBKv+yZSsKT735EMc7Xxeo5fOE=;
        b=kkGyFEZ0eorLOKyEG8mdHBsSzh3RX6eL/lsqexqVHUIkDT9FWOUAptCrz7yvM3oYIU
         Q0goVo8W5Ogqb2uzxuBn5UO0Ko+xxKn4/+NypjnB8e6arg5AuSz5v5su1QHyikd+ceGi
         gtaY1AnIG87hbZe90RFluYqnjUZHqVik9aIbP5SGJ+2CF62RCDMT4B5Wt+gW634SBMHF
         gKguZsuhWbS6nC8BAhgOqXU/g7rd8xyarPbJGjcjk/k9iHYsK0vaw9KpK1Toz3Yr51Tw
         ooahqk4Mmr/r14SsQOPYNAJApxsIyNDUvEdAJPvQnrgP88p8hrxA4vADeWhSKFTOWpia
         DE9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4Hl02FbOCXxLIfs4uBKv+yZSsKT735EMc7Xxeo5fOE=;
        b=VUuUubrVqEdDJeZKc/nu5d3OWWHlfh/J7PbdbvMJfLDJ6b+jCu33Wvf7su8Xkmqzc8
         flMJfqYr2SpJsLtTG/7pWAtZPsCjGJiYjYh1hglO5897icXJdByQ4Cnah3kdSyCdBBTT
         /tGC7zTxd7n+zJEF9HQnPpJw6WY5S2fT3f7/LoNudQH12fQdHh3qck1M0ACUWUKpQNta
         XQE/9ADJ0Otn0QJGmbqhMNONO2KW8d88kOfNkpaUrpsgrTArXGcKfrTvfdOtW9ETQoab
         fY9/oySIfCDrXIxYpxDjBnEuRYiUPLNuXRPgUgPdX7gDI/0jTxbcQxvIrvHZMNW8xFnn
         38sQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVxuLaFPxV2G5DT150QcfPnRU5zwQdPTHXXXRlfcRQ1kX4LZjkL
	giGJl5oLziJN3tFJozUFT8Q=
X-Google-Smtp-Source: APXvYqxHThYc24JvsT2G3AH+1zyds8mKogz6T3L2cg1bOTQGwIAlU5o+NPIKz1udgUv5u10BQ1yVLQ==
X-Received: by 2002:a1c:1fc3:: with SMTP id f186mr939543wmf.27.1556777184260;
        Wed, 01 May 2019 23:06:24 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6000:104a:: with SMTP id c10ls222702wrx.15.gmail; Wed,
 01 May 2019 23:06:23 -0700 (PDT)
X-Received: by 2002:adf:ed4a:: with SMTP id u10mr1337885wro.322.1556777183807;
        Wed, 01 May 2019 23:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777183; cv=none;
        d=google.com; s=arc-20160816;
        b=Li+SXLE9sc+wjCy2V8yUKJmuQQ9frPnLrRbUY+340pXGvw2P+Ukk4IlwoElorJF9QH
         aEGNMZA2mQep+41PijA8jjC4gE9q96KQty6thIPO5NVQx8/+doCWOmOvWrOFNp6dep8H
         gN2kdGsB/5j1gthdL6kVw4qW36QzvUAWLMGnpRCp9y0AJ7zxCiykW698yIgjju7j3QOd
         bHkfuqwE0omolTM7813NU66hPvHtvR6Guz6KxrfHTGQXKBN5fvfrOyfkcPJILvFuH/fo
         fTpQ6S7uefYvty7Dx4GEGBWfaWmfZp5TkTogE4KSyI8I0DMNG49ZnIoLWhi36Vvlft9B
         GRFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=XzVqi8XA/7hwKrS72TdepUwTCEZ7tyiLkrbBXmDQ4ao=;
        b=KQThXOG71pbt6apNUCKAVPLhBMEC5U3mihHBC28eI2QOJIpVs5H3PdgzMnW5gpIeoH
         1oKz9jBv5yY8KfLBvm5p5U3+F4vlUIKAw9fShy2VyPP1SczeWd7nFk8eWadNJWp6VmgT
         BHrSmHtX1ijbmsc2PBJAaVnCiOw1A56onzb7KK4gWdiPMj8u8394CC1Y095LVA6W06VW
         xSAgpbzUNGD/xtLWBxGJ5S+U5KbN8zNlHuAO69SgKtHRg3BuCwFl4PXmg2w4Aw1vjqzL
         z/U5vZjwFiyUmUk6DmjcD+DDqfr59FZtReSqSk/YctOb9CBApLw5c1FFGzco4QuKmsX/
         Q5Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id d14si2214399wrj.3.2019.05.01.23.06.23
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:06:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 731DDAF81;
	Thu,  2 May 2019 06:06:23 +0000 (UTC)
Subject: Re: [PATCH 23/24] st: add a SPDX tag to st.c
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
 <20190501161417.32592-24-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <d488ea80-ed62-ab0b-0e6e-48e14b1e1027@suse.de>
Date: Thu, 2 May 2019 08:06:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-24-hch@lst.de>
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
> st.c is the only st file missing licensing information.  Add a
> GPLv2 tag for the default kernel license.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/st.c | 1 +
>   1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/scsi/st.c b/drivers/scsi/st.c
> index 19c022e66d63..b814906af0a3 100644
> --- a/drivers/scsi/st.c
> +++ b/drivers/scsi/st.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>   /*
>      SCSI Tape Driver for Linux version 1.1 and newer. See the accompanyi=
ng
>      file Documentation/scsi/st.txt for more information.
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
