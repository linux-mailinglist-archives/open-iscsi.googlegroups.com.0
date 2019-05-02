Return-Path: <open-iscsi+bncBCHZVHVFVMARBQUOVLTAKGQEXZNVXZI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C26112D3
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 07:59:31 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id n6sf205887lfe.1
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 22:59:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776770; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJbf5PwswSq2+zT/MIDOwr2DRtgl5oYvftPUgmc8owoh5GY7pzuoj1cOmJt9L/18px
         5bTbNwtc7sOBtZyimpspbZLhOnrpSDJyJvhfUQwO9CB8AGGigivDkzIZnVisVSPPOH/V
         T8apG8ovhV4SEpVx3URsXgpO3QnPwkQ/LtB7yf0DJE2Gci/jziBw7bYHposfDtVaaoR3
         5jXfQwbHMDEYh21lv7e44rN8KW3V1702cF2L9kDfC1N0MlKDF2e4TKfSoBRBqoJ1pqrQ
         i32fr7BKBQFB2cE74pmX4p5rXC8a9KZstFJXRHsp2oujbJ3TQDz1DXUbG6k/i54t2VOb
         N00Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=mtMxY8Zxdmba13ilwJoLa0J7LBf//hGmP4G1q9pEcHc=;
        b=0CDoOG0XlZTehBYEw+VULekkDqqf67cZ1uCAFoNOncqhaZIuoIge5unIV55KjcA0UC
         XTSjqGk2q70g5QGwQFU11XtqKRWHUhHpAjpBqBEVZzsVbkr5gF/ISBCSQ8qe5lx0JBSa
         qufXOSB67r/8Sfby15zzNxf0QmulPlBc/tiBTW0RpXjdduUh7a9xh8dfXxgdqzBxGP4j
         gcW03vnIDMYTteMpvsHYkE58jOaOksUBMVdhG1bqtBzgQnUYZ0hse13Yrfs+VpMdSsT3
         FU8UTm7fJkKZJ4tGwqfkRcSYYaewQ6T1NlFBN4/9WvHpbxwovy1o6NCJB6G8m+YdN9b+
         ae3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mtMxY8Zxdmba13ilwJoLa0J7LBf//hGmP4G1q9pEcHc=;
        b=azmvfcYYiC0bYbMDs/asH1gfQGANyYLIT8WGQ0qy+DkQcEXR0URoQRss+GxwGeq2X5
         WBW0Q4TfvAcNYVYhwj9wMWtNDzJbKKO2jk0kgf7WEmuMtxELdxHMh7iSgew26ndaqffr
         VEuMUyCqdPowXSRldbfPwgglHuc9HpRL4C0HzSbdkdUcwWk/Qrr8w1UO67vc3qcqd7oZ
         JNLkGuCD+5PlrFQT9Sefqx0Lt3H+FtHeTbIzZjJdSOW9PMEdoxBthXmPNRQt5SnjPEFb
         TarvE93S5brxbNWqE1bkIbGRg59LupZwQPYcNaaIO8t4sBXstuKbgw5ZhomJd03nUOgF
         Q5aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mtMxY8Zxdmba13ilwJoLa0J7LBf//hGmP4G1q9pEcHc=;
        b=K+f1Nq/ls1ZMbJNaKZMI4YNMpMVbu9FQzfNXIwHth512NejpoeiUBAUwL7faYk3IkQ
         bdPDphBTko7mzXlSb7aVf3o/4ppzIN/jXj6BxHCQef5ewhJzfZFgdZk5nMx5UDcyqIlU
         we0sc/ApPRcEiGInK0XhfMJbXL9H6OKOy631MP5Ep8am9T1/rTC7XC7oYRIsXWZB4jKZ
         t1upTEQy1Ktg33FvIlNhhmLihY0W+IJyE8EoLQMjXAQgVsJyS9BYhT9L3ozYMfFdD+F5
         /uz+i1KWPP/3q+djMDJchCIPYRTNBYyOdjI/QSWnnux7+VAl9BGxpZnL1gF3yksKHBf8
         YVzg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWN438F6h1Rx0dSLfZfhrQHypTMW9MBNp0MCK8GR1TK+uv7jWL3
	2ozPq46VUx3BMrz9Rps8sm4=
X-Google-Smtp-Source: APXvYqwr95tdOXijArNBbWSeetbQzrsvAIWvKyAayFGrYVRX6AMSgjXB51Wp7lS77GmNatvORZJANw==
X-Received: by 2002:a2e:968c:: with SMTP id q12mr761940lji.36.1556776770697;
        Wed, 01 May 2019 22:59:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:558b:: with SMTP id v11ls89966lfg.10.gmail; Wed, 01 May
 2019 22:59:30 -0700 (PDT)
X-Received: by 2002:ac2:5928:: with SMTP id v8mr948254lfi.157.1556776770263;
        Wed, 01 May 2019 22:59:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776770; cv=none;
        d=google.com; s=arc-20160816;
        b=c2HYTdyyf4j/becdCsKsPuWIjtIft5XMDY/71Y3afPSYLn0lUCaPIUWwRi9/gUiiaM
         4ukES7C2ZvXUCS3WcT+wkMVE4iAAiglSHrDStN4nr/MS/ebT6Q4HnrlRE/uETXTeIz1p
         HgcohqE5GPfnFm6B8FkQabQh34Rq901erGppPsOhYVfUN62+hUNNRwrzVXzul2MAQsi0
         8YvyKufBYGma/4k4EVUQ9gUmB0F21a0oa7uuzzgpUgILzdrhB1kJbqD+plGfd7e9N+5F
         JwLRyLEMXFjUcKNAKcmgLSqnvvqYmDP8Tp/inZWtSIQcFM3FQ3vhBnmUX6lSjs3FcQpe
         1oIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=GovV+mcxsvPx2GumSqlV4RwPiQoV0hWmlWK9eKGsJfc=;
        b=XqwnyDhWPsXHvk6h7T/00I+LMw3OIj/lK9PsvxM9ksYpQX+TGAbW6w8D+lVkaLLabA
         IOpwKPX8E2KAcULe8OD40PTDj+Hs+D5nxVa1OPY5Mw9hEzUwZfqskum6hv/kThxXJg71
         HVtaq9Sfx8SgUthAcQPwgATByyX4C9H4ncDuFWhw7Hug4RWBolHxSTLgoOoXXu0k4A8C
         z+WdLgXLRQzAgNjzMWx4tXSkLrzbGNqSm6HllKSDsLVy103WeO79LNQ5WUp4wOPWBA21
         RgEnKarXs5j5SPHHqVr60R3omRsuG1cT3oynd/Day2Cnln7ss7lLeAnDpANhletQo40x
         a24A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x14si74159ljh.1.2019.05.01.22.59.30
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 22:59:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 7065AABE1;
	Thu,  2 May 2019 05:59:29 +0000 (UTC)
Subject: Re: [PATCH 03/24] scsi_netlink: remove duplicate GPL boilerplate text
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
 <20190501161417.32592-4-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <dd20309a-9fe2-ae63-c49e-a6645980e352@suse.de>
Date: Thu, 2 May 2019 07:59:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-4-hch@lst.de>
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

On 5/1/19 6:13 PM, Christoph Hellwig wrote:
> The SCSI netlink uapi header already has a proper SPDX tag, remove the
> duplicate boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   include/uapi/scsi/scsi_netlink.h | 15 ---------------
>   1 file changed, 15 deletions(-)
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
