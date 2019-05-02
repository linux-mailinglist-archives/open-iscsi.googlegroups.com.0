Return-Path: <open-iscsi+bncBCHZVHVFVMARBP4PVLTAKGQEQO566TI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F56B112E3
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:01:35 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id e2sf156222lja.16
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:01:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776895; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZOQLpMFcuveFIoI0AF6NRpMighWbVgCAwn9rYSJwigpAgrN07N54D4fEvkhuVEEXXL
         XjUaIdFiELMufTrPYnN1FbXPvc5V693TXvcehR+FJnbbWupByaYAX7AYHFGbHfiSwRfj
         ukclH2YXdRIWyZ7ClzHHbiNWp/hh+OCmhqpcQv+K2659mXV4uwp4N5w/QNvBh9H64fKz
         bnvdMUJXVJdiyeX/s/drZhJ0tYVqMyQFUFVQ6E3GOMY7pMNql9DpTaKsPVw7xirSnHrD
         BdkeoLZazspwefBs7LzJFWclMTMp6WoY+z2jvnJgWj/QKjhwDS3OAuCayxRdKlEF7zeg
         Ik5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=V5O70ylpYEHoBa7w06ByC209ElzbRnYp1T14K0xxg9Y=;
        b=0BoMaMrnHRTt61gcc3JijyDRPTq1RSrOmBfs+5MeTrKDEtdYyKGSnfpM8cvo62QKpI
         vCNkMJF6WiGyiEgf7QMmQiOiNweASMRSNW59aOCaNoJpl/tylbrrXwapuv9MObMqFTmI
         n8ivgnATyqULlXALObDqQG2X7BfZpS1uPLB7AJgeIofKCdBuHkWZhdSygnL9z/EnbN98
         8474AHrvUL/z1w9JzbJdJmhUy1kU+XJKmwXBTxifdzUYr5PDDmZSo5ey37YhsN0q+d/p
         sODOEA9xrxgfw3wj7tkl0twltdm5qjoRhguF4KJfty6lGDFcjPbTQrbGi1ENY3yoGE81
         PZ8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V5O70ylpYEHoBa7w06ByC209ElzbRnYp1T14K0xxg9Y=;
        b=LsdkAed09SnHz6z5t8evepwlzSCnTLVMgKyukEPTfViSgkZDIq9cYqkzM0OTlhE2aJ
         pv7F3gLPHd1bA4KKopTDjBKU3KE9wOe0Obzqh3jwUZxCPLyNhbwfwaUB2eiG+jvSSnHl
         8VPR6rBxpnJ3dI+ZFhQzW8Eu7/R4pWxHg8Fu3ckz/70c1HU6dZYXmIyFrNhEiRtvYIYw
         IIezlSDehgoKydlMYOD6XABdMW10d8HmqyLKVrW21Vbqr7bfD0wv6HN+uLsWcwjbWCrf
         c//5Fpu/Iof92iNJxO09A5FZ8GUeYXWbvyVT2CqweD4s6mc33S8nR1oLd8sqcyo88cqs
         aysA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V5O70ylpYEHoBa7w06ByC209ElzbRnYp1T14K0xxg9Y=;
        b=k+yh8ns5xFMSv/lUB6Lh3NBALIdmM0ghRVWzqGgChtmPKEvE4qc6UU4Sc+4rkJEX5Y
         2qtumM3bmJWpTD3SH8qdoROZ9fYemyE8JUInscaBSxHTn4JtezhfE3uD/ckuolw3JPxm
         4SX0y1zhLVPtej7L6k/n/gRDueDHDbyBpn9pagFgtOnLksFyuIywQEsTMLebKnV2Dps4
         /8ccF4suQWWL9ZKU2zwnEAqNlu3I9be8zRtg0ilAwbrzuC//MY8C8Ha8yMZHuZtfRoA2
         yaNiY2ZXqYrsHBtCsh6ZjATLoir5iSNfms28hEh9i2wKX28G1O8SP6pPHlKFxwu7zdKN
         ZKvQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWPrkXVQ81orEhVeyCdzxm8OygclLjOMHx6K+wgBRFES3ay+B/c
	ovHWK7AsUryEKetxSBcN90U=
X-Google-Smtp-Source: APXvYqz0s0mWTz4wSDLz94++ZOpIuJaLjhwemCaosDE112C6acx/aYlKH5FZ+c7685EqJsMvFocQQA==
X-Received: by 2002:a05:651c:111:: with SMTP id a17mr719463ljb.195.1556776895205;
        Wed, 01 May 2019 23:01:35 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:9c88:: with SMTP id x8ls93142lji.1.gmail; Wed, 01 May
 2019 23:01:34 -0700 (PDT)
X-Received: by 2002:a2e:5b5c:: with SMTP id p89mr732198ljb.177.1556776894759;
        Wed, 01 May 2019 23:01:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776894; cv=none;
        d=google.com; s=arc-20160816;
        b=ffoPiZyqOGPFRj8lhQKtS8oVuj4glqzdGwDbZ37kK/tE84r7Th/U3rtm73E2Uy1AZw
         yVaNDh91YPZNFXEYMnYsXnthRSTdpTNzOYdf93XVFdZX8hcadwEWlQZEs9qzypMSD2BR
         z5FoSLBlyTsEyGVYZQ3fr2O7vAz2vLDOtegtnn7N2axaOkDLhg4WZE+f5AahgZClvNQY
         vAKeeFyQJxQVB/efP0yQcADKxG6u2/xSjXy4SQTndCCZDD1rKuhcFIZlbsy98Zsjr2QH
         40MslLoZ/eWa8b+RF4qR4Cf1UwIROx081LUjHkCzOYxOXFVPdWeOO/oYmym0IjCwC09X
         3gMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=7kEkVCuHe23rAfW78HsecCWLonzuuqUWogIVwRcEhSY=;
        b=kmS65xtEfCYO9Bpoz6WyjsrAXiyK7xqxorvdPHDxPI7nL7KBs9E30lHyCWFaAeZ74r
         s8rGlTgeayZJ1KHBAAnf/hUNSLbqfo3teVLwU6QBM3ZJj4AmoDYwj66BsFgj2ASicXmi
         SrByLa6jVvkLByBQgLBczyvO346WhYw36ezGtU6h18M7KIDQP7dT2cpjRF81p3dBZkqg
         uT0X2DgcSZjdSmqVCFWzVLqVnvMhhKUygfORDp/AbTkgN8r3qXOtMs45EV1Q0Yn5MGpY
         cGkJ7rNI/IsFw7YlcPJwR90LVMEsNA7WtQ7Q1FCCrt9SY0GCURw/55AFYXP+3wTw/umb
         yo0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id e17si100221ljg.3.2019.05.01.23.01.34
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:01:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 2BDB1AEDB;
	Thu,  2 May 2019 06:01:34 +0000 (UTC)
Subject: Re: [PATCH 08/24] scsi_transport_sas: switch to SPDX tags
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
 <20190501161417.32592-9-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <19cdf793-57e5-5114-499e-39f8d2eea665@suse.de>
Date: Thu, 2 May 2019 08:01:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-9-hch@lst.de>
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
> Use the the GPLv2 SPDX tag instead of a free form blurb.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/scsi/scsi_transport_sas.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
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
