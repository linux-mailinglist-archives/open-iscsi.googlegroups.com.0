Return-Path: <open-iscsi+bncBCHZVHVFVMARB7MPVLTAKGQEGE6O3WA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAAB112EE
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 08:02:37 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id q17sf528456eda.13
        for <lists+open-iscsi@lfdr.de>; Wed, 01 May 2019 23:02:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556776957; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZSiUtviqmk3bnmJSor03KgQxHDfrSI4U5pxmAKJo2bTABE2rRnrDkRVRnXKsI1MFe0
         Q2HLE6QTPhWvtVb/o0xwm+KBmEhK20HNS4BSesze0DDvw4X806WC538MgHT7fKlYIWg9
         /uT2N89DdScO6jDElWy8LeEpp9SLc+w+Xr+y7C1cDc4L9c2/9EPaPzDoLJ3bG5sPmcuw
         AU+NSl3gXc/tY2i+dOrnrKloWU0k6VIViXeLsmCw3xzqMAhfTi+gBc5CgJ6SLtibNdVD
         yvY7rRhcvLTAys6ayOAQQFycEElCo8Iqgmdw1oBmJKK49S4Eyvdwn3eu1pMh+BA28o+i
         kwoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=KhMvyLwMo4L8VNpMo/H7h6+um8/d1j1mxo3JqBSxAVU=;
        b=x41yNW2ouVwi4YdGklSA0XqNet5wPJZBAkiac+IYlU/fRYjt0SVOdECQhpszrTuGyA
         9pxvGqOQhGG2ayK3VVfYP2RppnqVshbFKycH/gxt7z6Z0rxFuf56oOKCVqsqBncbUvGF
         +qj/L1Zn9k1rC0Yy0hgDN8gI1xXqbBAsIPTjUkVqZQ7F5Z21wTPHgVQLutL19QfhQqhR
         oH4Zla8m2tYTeL2bHWr6eURhel7SopAc+Mky57eYDjcxyGDpFtBRIQwMmTC0FfO8XQ53
         WUEJgbM0soPS+b/wY6gtnRIel8ROqnFh9O+jQvx+UkZ7e7Ea/bvqS69LSXJ1CbIUbjsa
         MIvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KhMvyLwMo4L8VNpMo/H7h6+um8/d1j1mxo3JqBSxAVU=;
        b=ItH4AONTl9wZIPIXlx+KGtho8ZrBqD3dHXPPWDF/QsjHax9KNO6wveI8EGnbLTZ2sp
         WpurhRu0iOBuuOgyQvGxKIckDElg/pQyy4PEuU5bVN2fpGMfbFOTrSy592mraAfB+WRO
         rSE2n/mi1+8/ML/fPvcxtU0jHEt7OY2cMckRv/MTpfP/VFrV9wKKyGhmgBpTe3rbnrOM
         NUVOHXQxw/wOwbSTv6ooClKlkSjBKWmSG19+7xPY3pXdAWdzEjQez5sXfNm2EhFnkjoT
         bKv1puM6OlvD+/PXG1JV2pjtDQVZXETqf8uGsGZ+keaji2B/RHgylSwAzje7NEHqLorp
         hj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KhMvyLwMo4L8VNpMo/H7h6+um8/d1j1mxo3JqBSxAVU=;
        b=faPLaPRBFbdrO8Pf8nhw2sSfcEWnyWISLFfkLn8RD7pHzG2d344Ip3QSSdM8QRPKF5
         h+t7xd07aNsMeo7a1y2dbzirbOnUMfG32et5xou31R5d6bSCt6h8b/iAsWn/DIOeaf6J
         rGS7hsB2B7l61BvT7ha5IBBf7x2WvmYRf/WeYBo/laEf1e4kbtrCI3dSbzo/8kVV4HZa
         dlqSzHr+foDbwY+wXPa6EphXgj6z3A0o0pPLqWoCaumuXhXrr2wsujYmKuIvTPKFPvmT
         teKQfDM146DhLTVl0R+VCq6U3zkM0l5SkaojkWDuRCwrEHxNMyaSQH55bpv7l17FOgnu
         4tkg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAV809IlSLJmI2ot8ch4mOr5rOHHodBMcLPDfgtytzGpqpkWgLkw
	ZB4cdyxWoNgSwwwNPepcwYM=
X-Google-Smtp-Source: APXvYqzMzpV3cKjDQsH+v+C+mSQkNN5k81wpe9h1iejnyDRaoEkR6b1YwtaAsgljATtrLlYJocNiog==
X-Received: by 2002:a17:906:f29a:: with SMTP id gu26mr872034ejb.148.1556776957097;
        Wed, 01 May 2019 23:02:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:7016:: with SMTP id n22ls141313ejj.10.gmail; Wed, 01
 May 2019 23:02:36 -0700 (PDT)
X-Received: by 2002:a17:906:6c91:: with SMTP id s17mr849525ejr.182.1556776956645;
        Wed, 01 May 2019 23:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556776956; cv=none;
        d=google.com; s=arc-20160816;
        b=iP80+abaHqylSgG8O1GGyJPe2ot5+TWEBXSxQO8v3OMk8FH/oICuiolU9IPV7QTBtR
         oHbwdxjdIbUoEu7nUwQkb3do5P0Kpsfo0B310j38F3WzB4W/bvEzXATkAX2xPxAdROz2
         pijp+SI2fFj4Nan2GIZfMV3629SChWTvRtfETxyuET/OadWge2sHAfI6rIvADpJ/LaFW
         E9wZzQtRvUD0dYaZKfNqf3XFjXuhbS+pY6dICIpukTn4JbplZmmJR3XU7zLoH9AxmedU
         lf6dQ/Ocz0nGIlSOnV7vzy9SsfwQBTCIGKPUpB8y5jmBMEU7DpmeUHDGXwHv39/vxQmO
         Vlng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=q2bCZMWU2XI+4G1XgSRqFhxoRpuTZ7aXufXK2vUs+7g=;
        b=b2fwK3X9PkfSSpJ3EbOjsy2jodcdEiVDe6XnnwQayD29tFlcheYXKBwgmjFMrudyqL
         8wzWTrH1mYt28qoNWRJvBjXFzVqone/YvDMXjOdnxZhNvsdb4hpPQ1Of81L5jN3VwRNW
         ytY/RfY/GLn0nY7eHZTodSAJ5jHTz8SrQBiGRefsADZtabI6ihXiZOGQ+/Thfuw2DJTs
         C9d6fNO/ztys23mI74VuafvH8S5BOUwB1obXVwju7fYcr6q2WySeUkD39or/Zmoht45F
         rTat9b9K2XTL0EhE3pQ7+wngmFzFnfIuFAYzvvikfi2ZstwM7MZ7XYKd1ROweCPUyn+B
         DVew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id z45si688616edc.3.2019.05.01.23.02.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 23:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 59753AEDB;
	Thu,  2 May 2019 06:02:36 +0000 (UTC)
Subject: Re: [PATCH 11/24] libfc: remove duplicate GPL boilerplate text
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
 <20190501161417.32592-12-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <453a0b4d-d152-d2fc-4a2c-51c27ce83c71@suse.de>
Date: Thu, 2 May 2019 08:02:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501161417.32592-12-hch@lst.de>
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
> The libfc uapi headers already have proper SPDX tags, remove the
> duplicate boilerplate text.
>=20
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   include/uapi/scsi/fc/fc_els.h | 13 -------------
>   include/uapi/scsi/fc/fc_fs.h  | 13 -------------
>   include/uapi/scsi/fc/fc_gs.h  | 13 -------------
>   include/uapi/scsi/fc/fc_ns.h  | 13 -------------
>   4 files changed, 52 deletions(-)
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
