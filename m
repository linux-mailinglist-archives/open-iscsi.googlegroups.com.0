Return-Path: <open-iscsi+bncBDVIJONZ3YDRBT5N5DTAKGQEEYL7Q2Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-it1-x137.google.com (mail-it1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 932301C04C
	for <lists+open-iscsi@lfdr.de>; Tue, 14 May 2019 03:16:00 +0200 (CEST)
Received: by mail-it1-x137.google.com with SMTP id t196sf1109955ita.7
        for <lists+open-iscsi@lfdr.de>; Mon, 13 May 2019 18:16:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1557796559; cv=pass;
        d=google.com; s=arc-20160816;
        b=jQqEbswr8ESW7C7u5AfTCAr4K/qxAXDkiaAyO5hn603BA9tVwsNjVitNfq23rEDj34
         XLVg34eNsZy1hui0gUNrXPkHa4uPn6eIvP97uStRx1+/vIS/chZEwSVtFPjgi9Yjd9R2
         w4sclnVklhdglb3Bpp0faE0p4YMaE42NuUCn42NsBY3l2gUDaFVpd7rh4fpJvCDpzJED
         6JMRtEt2F+rPr7E2hXNhNpXJ/6sPPg9i/XjfXxXzgJJEhVdQanGUZQFwF0WLOuiue+cS
         HVb1rWXdE0kXJUi7llEAdRQntrNrM6g/IFsv2+RlAuPBVwLsx0TiSA8KXGFNPLsAT1RZ
         z7jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=0uuollQ/NptyaJepakz19ILfI1rgco8tmJmLU8XcwMo=;
        b=LgKEu5aitoznfiVpj0e/CUQF4zTEpzFlOlLjOWBX7F5GNFIDbNadw3LnUUAeeX+Krq
         rE7kvFJ0GbhrRYNBZ/O1GPBWGByDY7qSQz/FLsKzXBEWR6tYxQKDBMVjPfro9dp4jJ35
         HZqGY1EAXQgFXpjcXseR7WsScTDcfCvSXIPcZML/uLuJpw02H2Z0u2ZQsKL9rAumiKw4
         D6PvoO1zm1IpoIjOaJiMhOcQ5p8e5pV/oJiZRM2muxZ1tScE6s15WjWFPLdqbMKC1WZp
         qqkqAnwHGjqSNdnLsxdg6WygiSDJlaImNy8/MRRZs80IWmAJINtrhyZTZzfoASPBWNxh
         l8RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=Oy3MGfga;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0uuollQ/NptyaJepakz19ILfI1rgco8tmJmLU8XcwMo=;
        b=dtf8lb8QQKUf/7akg0Xi2901w2i8IrGZbhPkzjAvVqaXpOhOpNILF9HL8FpmDKVCiR
         ENYZZcAbN8QiCHk3SmLlLLWLFo8uDZxlMRWQCxOlFjSw+J+tlmKhBVzpf/wdknmnmPT+
         ON/N9+uCVZpQ2EyjRrXV0ICicHahTNrUpRS64UKWzohnczFV3ZofkVs3HTw4ipbgPGb4
         HUrwGx++KZlTs6sIFWWxcX4Zc5Bf4qpQ/qhZpkyxKMQ8JYbUpbyyAMJ16SQl+QG05j8B
         jKU7H73T82ws1DESFSlJiwRHeA6cJY+TkRu+6tCyIioJDmbgnjut2KpbSdf7rNMkIiiW
         1G4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0uuollQ/NptyaJepakz19ILfI1rgco8tmJmLU8XcwMo=;
        b=cr9ffCTQekOrEK5TOSPSuM5eDksywF2zL9e1cp0638f6qWlUTrGnwoCCF48Nsj1CdM
         YsJ57r0H1X80O8WGk9xLqMj4yjBKUcMK20eXcKz3nwCbwLR2KrHSqkoL4dGyFl3EVqMy
         8s1wjYiMw+bPntsqhLRmNbo+cjIxnJ5Zjrt003zIj8ub0yauLo5448goMY435lH73i1z
         /2ktP08nEnJgJz2WudKGuJOWVy5jkf16ZmFhr9t3CqD5RYLZ5qKQImIXPHGsU47Q+nFI
         e8r1orJ3a8rGDCdfx6l7C0lVxwqN3kH8Asvp5TUBqtsjhzfMqXZVnSwNOVNW3hFfZfb8
         3bLg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUz00WufOlUnycQlZfbx7Wqmqwx74pUz8ILbIVJROToKDoO3mAI
	rVrL2oCE4zeJIrTOwVOOHDM=
X-Google-Smtp-Source: APXvYqxshYDcVspw04ZwWpS/IWtDta6LUVEwr77Qxk3Puu1spHHaOz1rf7GrsSqvDlCeqta4qf3Omg==
X-Received: by 2002:a24:2e03:: with SMTP id i3mr1671952ita.110.1557796559244;
        Mon, 13 May 2019 18:15:59 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a6b:4015:: with SMTP id k21ls893657ioa.11.gmail; Mon, 13 May
 2019 18:15:58 -0700 (PDT)
X-Received: by 2002:a5e:8b4a:: with SMTP id z10mr14115361iom.260.1557796558794;
        Mon, 13 May 2019 18:15:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1557796558; cv=none;
        d=google.com; s=arc-20160816;
        b=OIdXlMgtkT0RqCfyFJRZZCNvGRDmRAXakmJschQVpARDYZJW5+wRRvFH0pEFJJgSS/
         KbxV2jw97KKdmrHwXRqsFAQPh/AUBOokRflhlCRpCXrrjC8at2Uv/gc82kHanggGsc4r
         Jnqhr0s5anFwgFMklrdUQM9+GyXItN0cey5lBUWcxedhK46+u80Pktgv+92AhTkafR6+
         f2gaPJeM6BVY38VyGDzh+xvTG5LzaPuDo5lK4GFkOcwUbf6jw9DaTonfNA2WuTymVy6O
         QK414scaB0StdPtrZE6H7ptIQp2K3cDrCBouyL3SEgoT6qAwItEhgoqYoDrxPHNI8Pnw
         +Z7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=h/UbqC2oX84wkD3CvF5pdNFqnK4WJfFeeWXpModvaYc=;
        b=AfuzYe1klk+krGmhfVx9W5I7MXqYYJOxfmkza3UA56hscEsK5PtVL4bzXRH9av8Hxf
         aP7+6Dt4ZCIOOs8O6G/DFHzilwEvxmJWqRKHJOXYeMr0yhrE1/iYicbPfQ8+yvCF4lMZ
         aw7H100zPeHGtEMAaF6gvvOOw8CgybRAiRpHsK3ZCz3pO8p/T07N3d2x3GXMqaFHHJ20
         mN6Pjw0uxvz43rrpokfmvD1/Isz4yhgyUBgj1fncqZNsjbUdMhjVuhtdmUkCPjZnPZoK
         rQpZx+0JTJl541S4aL5LES0Y7mAn06lY8z7mE23fMhOTuJ6OzgaGqvk0bWmS5UYmihNF
         RK+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=Oy3MGfga;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id d197si2113671iof.2.2019.05.13.18.15.58
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 May 2019 18:15:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4E19prM112805;
	Tue, 14 May 2019 01:15:57 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2130.oracle.com with ESMTP id 2sdnttjm82-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 May 2019 01:15:57 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4E1E8eX126817;
	Tue, 14 May 2019 01:15:57 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 2sf3cmyq8x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 May 2019 01:15:57 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4E1FmW1024036;
	Tue, 14 May 2019 01:15:48 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 13 May 2019 18:15:47 -0700
To: Christoph Hellwig <hch@lst.de>
Cc: "James E . J . Bottomley" <jejb@linux.ibm.com>,
        "Martin K . Petersen"
 <martin.petersen@oracle.com>,
        Hannes Reinecke <hare@suse.de>, Lee Duncan
 <lduncan@suse.com>,
        Chris Leech <cleech@redhat.com>, Willem Riede
 <osst@riede.org>,
        Doug Gilbert <dgilbert@interlog.com>, Jens Axboe
 <axboe@kernel.dk>,
        Kai =?utf-8?Q?M=C3=A4kisara?=
 <Kai.Makisara@kolumbus.fi>,
        linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
        osst-users@lists.sourceforge.net, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 12/24] libfc: switch to SPDX tags
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190501161417.32592-1-hch@lst.de>
	<20190501161417.32592-13-hch@lst.de>
Date: Mon, 13 May 2019 21:15:44 -0400
In-Reply-To: <20190501161417.32592-13-hch@lst.de> (Christoph Hellwig's message
	of "Wed, 1 May 2019 12:14:05 -0400")
Message-ID: <yq1ef51g7jz.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=679
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905140006
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=716 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905140006
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2018-07-02 header.b=Oy3MGfga;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


Christoph,

> Use the the GPLv2 SPDX tag instead of verbose boilerplate text.

Applied to 5.3/scsi-queue except for patch #24.

Patch #13 used /* */ syntax on some of the .c files. I fixed those up.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1ef51g7jz.fsf%40oracle.com.
For more options, visit https://groups.google.com/d/optout.
