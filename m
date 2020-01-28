Return-Path: <open-iscsi+bncBDVIJONZ3YDRB6WQX3YQKGQEKWB22XI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5E214AE5B
	for <lists+open-iscsi@lfdr.de>; Tue, 28 Jan 2020 04:20:28 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id u7sf4764025vkb.1
        for <lists+open-iscsi@lfdr.de>; Mon, 27 Jan 2020 19:20:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580181627; cv=pass;
        d=google.com; s=arc-20160816;
        b=LW7PFdSxOCJeyn/I+ZGcyXTqYKQ6gCIpHtRk4NhWnA8WZPiwKdhMnxJMT41cT93A0k
         Ef3+b0SHfUe2/nTWz1eeORiGlpX3bWMyhzhNyPNKhDVO8BMtod2p48cAVfSOsaHRo0LE
         wW8j6nsUBoVN67hKpP7SoqkFGp4FQimSGGKzKDoOSoSVKNN3DX5lEzRHG55rYU6XWVhq
         +hspWNqBMMDdtr4FDXrqYXoqmi/i8xVhAUtLrLDqHWnytgaGr9GCLYODPgh1s1uqDjv4
         D0sSiAeeE6+NY9hmnETNcEEnAnVZtcV3QyfKfH7QaPLSxPL72MszNupAEevCPrXaFoGx
         HS8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=+ZfQO6ItLqkuyxfAcztwgOtnpMw2eYh+Zz0mKbjtK+8=;
        b=O1zQ50iV3wAd3tAaWkFQvr6LyNXEbqIqlWSCRcLpsI4XITLXs55lr1HsjfoKrBINTM
         z9tx/hO6OeB+CTtbgTlvo/rsfR1BV+cQ65v15HUqwMBhm/6dGN1Z7JxccQ/ilVtCGfrV
         VEFpEEbHwxPjpcXgQdywbsLld9GWP8qCMt6YqS3SkH21Lr53dR4EOrAv/5FGHRHYI6bb
         tNtid+uCgh9f84zYHRiF8lues4S83D/3Q7TpY5SfjZlTaXdNBvzjwxyrCFrw53kNQaox
         dc8WWlMUGXO4rCVVPwUrErSink9lmWUkm8zFEIyKdQpte0g5+iu0UAWkw4s01lBZw0C2
         9Cxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=sQNWsJ+T;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+ZfQO6ItLqkuyxfAcztwgOtnpMw2eYh+Zz0mKbjtK+8=;
        b=NcO4If6nPt+ycbzAf2I6w0OShtWJq+z6TrmM7Q3jWlxia4L0pfbjHJ/7h5LeYTPocO
         7hmfc8WUGzzsxBJPYZuDN+gZqfvV+3RaPvt3gjfag3PUjwU7bjamYd74l31yIiaRiSQu
         kUpz88xK7BgpB3RnF0hFc5P9uK7A+d3yD0TeE5H02QACrI/FtE+gf3RRuuOb3NdphItz
         0nAsMPtNCOU57+XT5AeBfqfaqdfqI9UxFNPPYYEu7GjQfcE0ms+XY4BW535fpqDWym9M
         4c/MxLh/lVAJfoHIFif+b/1mnEininy0O/zYEESNC3uyzv46pq1UsR1v01BOEQOhjSbG
         WmDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+ZfQO6ItLqkuyxfAcztwgOtnpMw2eYh+Zz0mKbjtK+8=;
        b=oNfLBBnXwo9NpMMU0idLN4ByDFkBtex5qR//PWgPF3eecX70HFes5lmGriRqZapr0p
         xCwvXM0pDaWlaZMuNRmFOvxHed2MSNSmV27rIizyqPRvtiQ5Wmj80Cam2Vu9aLiyQ8kc
         tJzNpuRpsb4Waf53Gc1/sRpXTSXez6jtI8+A1+4xGX3LZ52clfQNsTfFsJZjAmc89Kst
         ERstR1D/BQsR6jKwwcxHD1KLN5fxq9vLYsIGlyDkf4+I6bTXYtnS+ef2HikX0s7dg87g
         Mtx3R35bAtsY0p7otMcfxHWKuaDN9qURNSBG2o6IG+P5ryOogliCTKpr1JuH98wYVwXP
         7GvA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUyY2rQQcjgksfXucoFYc2a2UmRafgxLnzfo/Nki0IXHO9lN0rN
	NjumQ5zY1rG+sOS+NcEYNuI=
X-Google-Smtp-Source: APXvYqwqFzYicLz5SUmPO/sRwpnZZFqlq6d+5TfKpKyLBi1B34QiDjS0JqOGtvw5Kps/94z4c1OsOQ==
X-Received: by 2002:ab0:2a0c:: with SMTP id o12mr11373177uar.72.1580181626852;
        Mon, 27 Jan 2020 19:20:26 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:5f85:: with SMTP id t127ls586079vkb.7.gmail; Mon, 27 Jan
 2020 19:20:26 -0800 (PST)
X-Received: by 2002:a1f:9c48:: with SMTP id f69mr12519447vke.98.1580181626399;
        Mon, 27 Jan 2020 19:20:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580181626; cv=none;
        d=google.com; s=arc-20160816;
        b=CQUzw4eACLg209B4Ft/DPzPiYZ1nzxc323u508ZuNT7pW5U+oAnHdPMo8cO+MbrLJL
         S1BSJfR8QdDOw6HCIKyqJiqpj1N7s+cmQXfhL/NhIthjMK+mFvn33C03KX26ip8c/gGr
         ygyqp2VuoY4iLrzk+Kl/bjkjHl8A0mdlQ7jr0vzfjhX1uxdvixXBvlfho7o2/wAmjNCz
         VLDAf/+I5974dSCdyxeOHYXsE8tZTCsWX7PZtnzKfHWyJlZFcYY9/gCa4JDXjJazHWLT
         SZ2xIoP89+AGG/U2FA3QbQtDlOYYwtx1apme/DAQVb8JwcDnyULTujZyizkyci0Fq6kL
         deOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=NGwTCjUj/jozdaP1xR6tdGJJbqCxCsMQT75zlqPA0JA=;
        b=z9XDxIQ9T8uKg1lfN7y3p+2mhNb5lmesir8U3JZsVRMNphCFeqAqV4bkrjBFjFoeTy
         4mxPBvmVocnZQ8EXuESGQQoqEA3XusAG/+Xfn8gbQxMxuVADSgnHEt29kF0LbeyjYYDV
         SFbCTyXLHCINaSAZPVV1TPNcoIWNgXM2tlurzS0GPJfg3q4vkkRvmuSNS6dSYNcPcl5k
         kewGrhzwIFcJs9piCZUZb2s1xg4uZ5LCn5WtXHJr1QK8IlfYlMAUtTeNSLPYymKc3Osj
         FDalB0loOMNWcGXk3Q58bxLt3yNdtRiFjPnKRQrPH1FWQDSijZFQpsm++ifeCh9Ge1bC
         wT1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=sQNWsJ+T;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id n5si334697vsm.0.2020.01.27.19.20.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jan 2020 19:20:26 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00S3D7xW166417;
	Tue, 28 Jan 2020 03:20:16 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 2xrear388m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 28 Jan 2020 03:20:16 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00S3E4GO178941;
	Tue, 28 Jan 2020 03:20:15 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 2xry4vpauk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 28 Jan 2020 03:20:15 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00S3KBu9029172;
	Tue, 28 Jan 2020 03:20:11 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 27 Jan 2020 19:20:10 -0800
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: Lee Duncan <leeman.duncan@gmail.com>,
        open-iscsi <open-iscsi@googlegroups.com>,
        Lee Duncan <lduncan@suse.com>, martin.petersen@oracle.com,
        linux-scsi@vger.kernel.org, Bharath Ravi <rbharath@google.com>,
        kernel@collabora.com, Michael Christie <mchristi@redhat.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Dave Clausen <dclausen@google.com>, Nick Black <nlb@google.com>,
        Vaibhav Nagarnaik <vnagarnaik@google.com>,
        Anatol Pomazau <anatol@google.com>, Tahsin Erdogan <tahsin@google.com>,
        Frank Mayhar <fmayhar@google.com>, Junho Ryu <jayr@google.com>,
        Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH RESEND v4] iscsi: Perform connection failure entirely in kernel space
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200125061925.191601-1-krisman@collabora.com>
	<F29720C3-86AC-407A-8255-9186E3AE0676@gmail.com>
	<8536c3ctu8.fsf@collabora.com>
Date: Mon, 27 Jan 2020 22:20:07 -0500
In-Reply-To: <8536c3ctu8.fsf@collabora.com> (Gabriel Krisman Bertazi's message
	of "Sat, 25 Jan 2020 12:46:23 -0500")
Message-ID: <yq1h80gb72w.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9513 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001280025
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9513 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001280025
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=sQNWsJ+T;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Gabriel,

> Thank you very much for the quick response!  I checked here again and
> I didn't get the previous email, but I see it made into the ML
> archive, so my apologies, it must be something bad on my (or my
> employer's) setup.

I didn't get it. Patchwork didn't either.

In any case: Applied to 5.7/scsi-queue. Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1h80gb72w.fsf%40oracle.com.
