Return-Path: <open-iscsi+bncBCHZVHVFVMARB4MRVLTAKGQERBOWRJA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 0755511319
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:06:42 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id r48sf534310eda.11
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:06:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556777201; cv=pass;
        d=google.com; s=arc-20160816;
        b=TCujB8L/4p4VbT3k1uFtj4nviHQFceqDt8xBfNDWF0eK2oOqtsT/ovyYJj4yX4VPHf
         7+Q3WhyuREcSO/mVBdtKWzZmYeh4I1zBhA6hzzdE3QszLOGziB1sH8s0LVjtGRaKQkBH
         /ZSiphnKH0wgtpx3Yr93ltT942+S9KemqEPOE86SuPZI7zOaap4QG63m8kzGvrsP91/U
         ovde8+XO6R/a0HZT2fVB9g00I2bUyReHKb+dViR7MvwqF7vvSFFjb4xaGqq0nUaPWXgZ
         CASnTcBXhUeaI/RGD2jEqI78Ppx3+E7FKa8Sgz0uJyEIzh6P7Q9snO+8OEj2vn8NJrx+
         43mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=OH4/lZznDoYP+ZPOTFunNFO4j5dPmlrVTAYYdW6if3s=;
        b=rXgwnvIdGEQbbQP3F0rQv9mShJ/quF+C7Ug0iCsQwk113SBsOUmA1JP+2MVaMpt4SF
         uK/EtdNT6eFGvXqAloLGTFQjrDy+jyxtIiE/wemcrsmyvSyP2BkW7ZIqHeh16xMaEdcl
         uwdiFVPM4HuEjQaVlJ1zZIY+8XIbEUeZ4FpVILjoqsXuGYSntj+jl0l66kgn/zT86uCd
         Kz25Y0q8NtYOjWQTg8YnDlmJ9+vIf/9u+uLDJSnzYU/Nc988+Ck7DecroBaWPRRHzAMz
         45iUPxn38P8ZAUOTtoDBObghLaX53rlTq3K+izT7ZGKadVWg3neNDlOy6C8byQPEUZmE
         RlAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OH4/lZznDoYP+ZPOTFunNFO4j5dPmlrVTAYYdW6if3s=;
        b=DnP83ir0i9gdQtxezTwyGx3JCtVC76GvvcXvmCj6l7IOLcXTS2AVmMWQU/dHAvLa21
         EJ1pcMYq91QXhFMdDdUpHOMQSxXVC6RiIbupAe4CbTDu75rrNM76ULZPVbUtIiHHYFfG
         8BL/g1Wv6mWEtFrSvLZxvya+dN1NoPVNnBEs0xPTXBqgdB5/CJ2RmTaHNte2Wo7US3uD
         pvhc0S5SpliSOVNo0cpH7nSpd/BPqDulQQA7WqlKR5pLR04yclAk3jb5LhYDyki4j7u/
         c/HV65EmmaruDGMysdtA+g0uVgYovASqqUNOupdtWlKVqbcnCS4o61yJuIfIJm+yY3Nb
         3ohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OH4/lZznDoYP+ZPOTFunNFO4j5dPmlrVTAYYdW6if3s=;
        b=R8d1EZOyYai9+RkidhT58mXadiWHBzbx5pGAyuN37UpUtoExkoGfuxubp279YQ188E
         U8M6th/uq3zbCnohVGpJz5MIkJKMKRO91I3JUxGrpnKQXrxjm3NPKptYOzQcmPo20UOW
         BTrl/pZsGEqaJmTZZbDLhbUxaok2dxMon3avyhr/bAIOXQT3zpAtaPbzxkQ2ZK2uf0rS
         6/zYlqBE2npY3JV+8w3iF3OBJ2rkdDLOkzb6wrMn9BnKDypPy2WX2Y60WvJ1F71xTWGZ
         OxMD8Tx8AXCg5NZmdIwWRTEeaWV6ayRVZxbYm5P6ia6jBnrAJhFXdlH8lFxHOGPQ7pGN
         HU/g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVgYan+O4jZBgjDTOL44WCQRXl/mFpp3qK7/5j6uLs0MYVsCVUi
	5GZovZmUCyQRZ1F+jJhBzMU=
X-Google-Smtp-Source: APXvYqwMS9DMEfi7bCkHjdE5s5m9K6dzwdPb7EeidkdIdjm9dtailVwB7piNVYGVUSSUwphok222qQ==
X-Received: by 2002:a17:906:c782:: with SMTP id cw2mr880284ejb.102.1556777201810;
        Wed, 01 May 2019 23:06:41 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a50:a641:: with SMTP id d59ls183031edc.6.gmail; Wed, 01 May
 2019 23:06:41 -0700 (PDT)
X-Received: by 2002:a50:b865:: with SMTP id k34mr1346781ede.16.1556777201372;
        Wed, 01 May 2019 23:06:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556777201; cv=none;
        d=google.com; s=arc-20160816;
        b=ksWwsfR5DnklO6Drkm52+ZCbAFhhglGNrNoICAZK6PUbjHSdaJ0cMc1tlEiiIpxe+o
         jI9lpz8tz7P4Nq/nztQ2C1BJvR1iHOVAKa74KxnZtg9+G5GXSz5nR5BkKJNWJviVnqUW
         hP+4ajV6TUe/pjTrmrbvvAjNrXYQtPrPUHE/D0fyXq1MLkdJMI2OcJXz3SqKX7Z7boQR
         Zys/avbUEMmnwb1btQtJTPrs/9ONmYvYa7a92xFFgEVcW5V6r5TNP7lWh7nGmBJNcred
         eayeJ81DpD5GfweFidYBSD2WLxacvJy/H4wrXvCJWTogCaN6lJTLiovRAqGhanH8jXEk
         wyug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=YTKXHPFUkjH3So/pj1F2dsD7IlfZKav4ULp/eXMVZ94=;
        b=UTbEbTaFswJ1evPEgHlb2QvgrPyAvPAUVxQIcGkU+O4UA65NPG4hAthGruJHxxRPDy
         gJ67ZDwrqjZqNsiVvtFb9xwI4uGSBvB01VBb0T9weiLUHobl7BCbUL8PtqTXuGjPgQRV
         E979r0ecs/dp7rID60oG9hqJK95FKbtbxBIQm2OMjd+2yVZQ+BfrT+QyEThA3EJp/J+G
         H4W31C0QjgDL+XeUh1OLtwmCLlKIc6wg1+FLk/JdpsdY52oGphD3hmdqkw9gQ9JAsrZc
         p5eoguZOFPhqfxsOA72RHgyeF0zGAnA0pjwvx/+rtbG/r/I34/vfe3VIh06MzQ/0FVpM
         kBLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id j5si1847573ejm.1.2019.05.01.23.06.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:06:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 16E97AF8F;
	Thu,  2 May 2019 06:06:41 +0000 (UTC)
Subject: Re: [PATCH 24/24] osst: add a SPDX tag to osst.c
To: Christoph Hellwig <hch@lst.de>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
 Willem Riede <osst@riede.org>, Doug Gilbert <dgilbert@interlog.com>,
 Jens Axboe <axboe@kernel.dk>, =?UTF-8?Q?Kai_M=c3=a4kisara?=
 <Kai.Makisara@kolumbus.fi>, linux-scsi@vger.kernel.org,
 open-iscsi@googlegroups.com, osst-users@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Chriosstoph Hellwig <hch@losst.de>
References: <20190501161417.32592-1-hch@lst.de>
 <20190501161417.32592-25-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <70277444-5b5b-6e3c-5af3-c658a841b144@suse.de>
Date: Thu, 2 May 2019 08:06:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-25-hch@lst.de>
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
> osst.c is the only osst file missing licensing information.  Add a
> GPLv2 tag for the default kernel license.
>=20
> Signed-off-by: Chriosstoph Hellwig <hch@losst.de>
> ---
>   drivers/scsi/osst.c | 1 +
>   1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/scsi/osst.c b/drivers/scsi/osst.c
> index be3c73ebbfde..fe4f0e7d6359 100644
> --- a/drivers/scsi/osst.c
> +++ b/drivers/scsi/osst.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>   /*
>     SCSI Tape Driver for Linux version 1.1 and newer. See the accompanyin=
g
>     file Documentation/scsi/st.txt for more information.
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
