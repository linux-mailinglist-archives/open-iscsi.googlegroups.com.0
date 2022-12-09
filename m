Return-Path: <open-iscsi+bncBDBZNDGJ54FBBA7E46OAMGQEKUDF3OA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1DA64CD6F
	for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 16:55:50 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id z2-20020ac86b82000000b003a804255e47sf2649002qts.7
        for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 07:55:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671033349; cv=pass;
        d=google.com; s=arc-20160816;
        b=y2bYsAtNuENOjDg91ZKAvlSb0rIFL0aHEDZn/+uN3HhkEnR8JpiK1WAcAo4XerfWrf
         mDc0rRG0MlpfdOZSr1roLJ2fSkBF4VHSKVUYydaQEuZY0q8/4uqu7h/H5qxBS/NNTJGD
         IWppRRPqIAGfNpXqSj1BEx7a/1M9DCKbEP9v7tH1qXXq9Jck7GQPIKeuNh+glGmznpSm
         4pwV9Imc7Hoa4030N7bXgXRLL6H9baUd7elztri/jJ036DZFI6u23rTzUkNeISnUKcTR
         ib2jnw36r51rMDNmN87LJQ4Hiafff8t47i+NYvOawDfQbmKfx2uKoq4K6V9mU3RfXTjk
         c/9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=U8vW62eQpt7T6zxkrsxr9MWoxmjLvfkPZjjhgALkeOE=;
        b=k3/odJw62PMSYM0lghziGC91XKt3fPmHt5T2+HFhKKlvNCKipk1keNnx0hVF2RunQ3
         popxYWydmtYi9Z5Rd2ZviBFbH+U+1aTAYWzMkfmzJ/BCuhvshlHWbfFzWfV6zw6gqpMA
         tbZB5q2PIvN1+tRNqGnDiQLnSN2N1wAUoZ/fDHa7Q2BpGTRSDPNUFG9eVC7csEa+o5Ic
         lwAMDvV6m4eQ8gCwQUZvkruAmy73rMAbbj4k9811liCjO8sD0GA4BfeSSxDRWQojXbPr
         77edrpB9gFEl9tNWSIoF1M2A3SPq1F0QfQR0AmScYsYIEEG+qE+xX4sBqsepYeYvC7FD
         1jQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lP5pQ24T;
       spf=pass (google.com: domain of kuba@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U8vW62eQpt7T6zxkrsxr9MWoxmjLvfkPZjjhgALkeOE=;
        b=JJ37dJtpe45/WYFWtRIBpABUuAnptcYU6mW50PYYSEVK3FMiMqaKzoLICfhCpMNTff
         ZxzicDicdfc8aszA4VV+5EfgmCznpktfOg3ngRECh9v+d9QdW7p4qAe0POv0s03D02e2
         8n51xid9fbF71NKl9ZLoTuCsgmoeLJoPnpkrCLNdNtmo/eFMw+XgdykFqC505DePIT1f
         cv7VOSIvgns+iornXKeBWVslBeF2OliGYAk5UCVzEaYt8GVc0D/Xih57GPtWwDV8wzVA
         mWy/V1U32gu326W73A3CvdKWotocGcG08dWqkdVzXirJyJN2zZZpGedj1JD1RjInNiXW
         R/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U8vW62eQpt7T6zxkrsxr9MWoxmjLvfkPZjjhgALkeOE=;
        b=MSeTEZ9IuqOXZ3np7qvfkQf9UQa88ozXSFNE3BMOw90tK7JrSZfJTIOruUx12XqQgo
         7gDoPBpX9L/gvoKwVLpmEeW/1HgG2oRvidP1dH3K6zR3oQZKGtfYDU0EYBKzUHOQmfSC
         uU5fisVYiLl4bcCjk5ww0NQRWO5oX2fQe4DxADrVcwymZsbR0KTnVIYsIbPV7/7vAA28
         Jk0J0c6WaOasXuofZH8qVzdGEdj4eqmhl2dLFwBCzvU5a/Q6JZpjrthaobTA0s9MDsTZ
         YLOVjy4UH+5NiD3lTYm0c72uUA8ul2xalYaOYnGqquvXv35Bc0L6UjoLNh6GiROE2reR
         1Wyg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnxC0rBhQ34Wr+rOjRLXIl1XZZX5QBN6iGd2wflbxLmwhTWds0O
	LFrAvJeegntpXxMtJ0WWfXE=
X-Google-Smtp-Source: AA0mqf6pt3G29J5ZC8zrAHV9C4dhgLWapqx2hGwxkzU9y8KH1tAE3DgFo3TEww5swzCC84bf2CCkfg==
X-Received: by 2002:a05:622a:1b14:b0:3a5:ff6e:d446 with SMTP id bb20-20020a05622a1b1400b003a5ff6ed446mr87153548qtb.5.1671033348993;
        Wed, 14 Dec 2022 07:55:48 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:5a13:b0:3a8:7fb:e9f1 with SMTP id
 fy19-20020a05622a5a1300b003a807fbe9f1ls10267915qtb.3.-pod-prod-gmail; Wed, 14
 Dec 2022 07:55:47 -0800 (PST)
X-Received: by 2002:ac8:715a:0:b0:3a7:fb76:2ffb with SMTP id h26-20020ac8715a000000b003a7fb762ffbmr2205958qtp.491.1671033347582;
        Wed, 14 Dec 2022 07:55:47 -0800 (PST)
Received: by 2002:a05:620a:29d1:b0:6ee:e13b:85df with SMTP id af79cd13be357-6ff5761c59cms85a;
        Fri, 9 Dec 2022 08:11:07 -0800 (PST)
X-Received: by 2002:adf:ea4b:0:b0:242:8404:6b66 with SMTP id j11-20020adfea4b000000b0024284046b66mr4165208wrn.1.1670602266582;
        Fri, 09 Dec 2022 08:11:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670602266; cv=none;
        d=google.com; s=arc-20160816;
        b=Jtim54eudOtX/nl2hzQjh6FKezJ8m0UhqlmRL/tKeMuMJtm7OJ7dTz/ZUkxdAl4Xat
         5ovQtM06gIqA1Q6Y2HDZNbZ5A3YjaX1A9N7K/m3cxlVlTdU+Pz9b22gOoLFSNHouYPlp
         3mxzt+13eaz8oA7P5DXw16SqC0a6tM0Q892j/mzJR6+WMAfODKPs4pP/rvIoGkIqKRbM
         SRZz+YQjM/K0fuBmnFz/RY8bGkBPnwf7rmoy4WNGkVQ03JKD/vEvb/4suv/78985hKlc
         ZVBKu04amzNbTQMKb+nA5nNH3VXg1aHYaZlXq1hLYQPYxabJQwkqE9Ir4iu/Rzk/x43L
         Y1bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OclmnU1jYcdMFqciE3c6RyUB6hgvanpdH2l220bFhz4=;
        b=C8j7ETMPCPbtEYx3Q/UH0XFP1V9/AZM4hlFymVg9gqRFfHhYuEdjFLkDE5AFe5Mr7w
         H3uL9QJbSVF1vlcoNOqZ/GrEvbt9zJShssmBkmVihmznvwV/pym6BKfQNqiFziByZzKY
         L0ylp1Vm7aARIWtJbpD2Hok503YHhVOuaMYqT5o9Urh7efYgN6wS4KFHZvtpclrgINnD
         Id3xvS/AkLl77DWeJ13R/FotXyn2g1mhdnYMM1lifrS40d3M/j4KTinxPqXgIVCKawdh
         VzDDwQBr1CMX4KVcNstoLBImELMVDSZsms2Sa8HBWZ4OBIX0iqFfzewgnUVXFqfXfnlc
         zbPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lP5pQ24T;
       spf=pass (google.com: domain of kuba@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id bj15-20020a0560001e0f00b002367b2e748esi99750wrb.5.2022.12.09.08.11.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Dec 2022 08:11:06 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 45F48B8289C;
	Fri,  9 Dec 2022 16:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B20FEC433EF;
	Fri,  9 Dec 2022 16:11:02 +0000 (UTC)
Date: Fri, 9 Dec 2022 08:11:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Cc: Benjamin Coddington <bcodding@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>, Christoph =?UTF-8?B?QsO2aG13?=
 =?UTF-8?B?YWxkZXI=?= <christoph.boehmwalder@linbit.com>, Jens Axboe
 <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>, Keith Busch
 <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg
 <sagi@grimberg.me>, Lee Duncan <lduncan@suse.com>, Chris Leech
 <cleech@redhat.com>, Mike Christie <michael.christie@oracle.com>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, Valentina Manea
 <valentina.manea.m@gmail.com>, Shuah Khan <shuah@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, David Howells
 <dhowells@redhat.com>, Marc Dionne <marc.dionne@auristor.com>, Steve French
 <sfrench@samba.org>, Christine Caulfield <ccaulfie@redhat.com>, David
 Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker
 <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Eric Van
 Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Ilya Dryomov
 <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>, Anna Schumaker <anna@kernel.org>, Chuck
 Lever <chuck.lever@oracle.com>, Jeff Layton <jlayton@kernel.org>,
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
 nbd@other.debian.org, linux-nvme@lists.infradead.org,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-afs@lists.infradead.org,
 linux-cifs@vger.kernel.org, samba-technical@lists.samba.org,
 cluster-devel@redhat.com, ocfs2-devel@oss.oracle.com,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
Message-ID: <20221209081101.7500478c@kernel.org>
In-Reply-To: <d220402a232e204676d9100d6fe4c2ae08f753ee.camel@redhat.com>
References: <cover.1669036433.git.bcodding@redhat.com>
	<c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
	<d220402a232e204676d9100d6fe4c2ae08f753ee.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lP5pQ24T;       spf=pass
 (google.com: domain of kuba@kernel.org designates 145.40.68.75 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On Fri, 09 Dec 2022 13:37:08 +0100 Paolo Abeni wrote:
> I think this is the most feasible way out of the existing issue, and I
> think this patchset should go via the networking tree, targeting the
> Linux 6.2.

FWIW some fields had been moved so this will not longer apply cleanly,
see b534dc46c8ae016. But I think we can apply it to net since the merge
window is upon us? Just a heads up.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221209081101.7500478c%40kernel.org.
