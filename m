Return-Path: <open-iscsi+bncBAABBBWVXCOAMGQENQ7UTQQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 958C2642EBC
	for <lists+open-iscsi@lfdr.de>; Mon,  5 Dec 2022 18:29:44 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id v28-20020a4a255c000000b004a05150ed97sf4671382ooe.15
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Dec 2022 09:29:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670261383; cv=pass;
        d=google.com; s=arc-20160816;
        b=0RuTX2WJua+iGxYjr9y+fixLVXdZ/rtaIb6mLc0a6MudMav8LfMOdPoZnQdwE7ZeTB
         1iXZWojFthY705T/6rMkPi8C4hUUxg0IeYg1JCR01rn9Te657b283X3plXAduhSfEZE6
         L+/ek7z7SE/Z9PtOgFs8utTGYU9KWgdvqSQ2cKxPh3Z/oK5eTLsTR4ZYqUmtodoV0Nso
         kOqLTOCAoRIOHDSzPvuF3q3Qfvj8EOfNkqygwAGahL9oFhgLRJ2xOijQDNjwPUCVAtJK
         CZyOu6BJBETV+2H97ryfj5TZRo4sMf3qH2OiqX+YmwjUuHYj1RPG5VnzVgAd8rtZSm2E
         HAvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=7nExyw/WFP0SlhGYYvAgogKKrgvRV3d+7Uv+E8IX9ac=;
        b=W02Hc+l8yC7u23mzKNo6gHoRvgCNSXtNXbetDehEzOheyr2QPlIu2N7pGPIUoWmchr
         LfQ6JYgKTJ8vAVfDo7X+sYhqrCpqLLaW2YlkPI025av53O5gmFwJgStr2ly5T9MqH+eq
         Oi8lyzxNLEclsRupbC21Dk9prAqU42doQM2sR2agmF54AEcd/14D6unJqHxki8z3lMNk
         qpAHB7pvIf/c8A+Zo70f9EHUROCLjInly8Lpr13oGXuysiREhAst9tNKNSfkZkhTKvSi
         q6r+2Lcc4JmKLcTn+GgFfizas0yo0JBMIX2bfkMcXN0VnoZVsCj0dwH1rV865Bou61M+
         Z8/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QUm6mA5J;
       spf=pass (google.com: domain of jlayton@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=7nExyw/WFP0SlhGYYvAgogKKrgvRV3d+7Uv+E8IX9ac=;
        b=m0w5RvfL4h8ZOcIpIzaf61gFRvYV7rNWGjfZRhVPrCn8IKcjBKjni1sjtW6LxX24KP
         xf84ffdSKPRmS29oPfzba/HgRMyQ/fQ/CMMG/rQPceHa9SgbwQEbCwidVy5Y4h/q+YfT
         e+cenII89Hd/4rXz8ayFu4jtUCmtRdW63Lg/OpwaVCDB241HCP8DlEd9vVXvdmB/0X1K
         GQ0+sB6Iov2+tlIuE2Sd6lJ6k+MAxtmgKkA//6+XeQZYJu/ibQ9C6CEmpUQFes6bizSL
         vwK0X5vJiwG+uvmdgjhqyzEtOtUWicZFwYsze6bV5Iss4f45Lwa2ts/xWI5w5/pK7oHH
         XkCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:date:cc:to:from:subject
         :message-id:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7nExyw/WFP0SlhGYYvAgogKKrgvRV3d+7Uv+E8IX9ac=;
        b=1mwVyOHJ+k/nn+74dvThU/F9tLI6/LlWewh/oaD9LML0u/eXP+5p/uoakBe8xb+JZG
         HeERIOckIhtyByNOwgo70trlOIrKF0zTUOOIyJMQy2jR9muBGE0YFkJw/OF4yJUVK2+a
         pd/9KMZvwP9B6mBFuaZuquusljgub7LIa+2928QRueD+FpgUT6n9eIYB5YuZZ5CAAfiJ
         U4Kjxnh8LEGnJY/LTbJvegivIj6K4n8jET2vGzH6gCxSQRGnxn4jku4AWgThdOJVL1l1
         5C4Lj26UuseRgKD+EWkwoY3SlGwwQlo2BZvoKKgIkUC00+r6p09qbvq43GXRhfdE8Wkx
         nn6Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pmZokTQFKE0wsirsdXVkX925fbZAPAup8yGPlETdfD9umBVUA5r
	8aZQ9HQeFMHYGbErGelwg0Q=
X-Google-Smtp-Source: AA0mqf547bHFt0kHdf2a56uQe/1IsYH9MoSJObzL5Udle+SKq9wmiVeXpT2n33qc+cunMluqDRyyXQ==
X-Received: by 2002:a54:470f:0:b0:35b:ca56:d94a with SMTP id k15-20020a54470f000000b0035bca56d94amr13252755oik.141.1670261383173;
        Mon, 05 Dec 2022 09:29:43 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:c395:b0:144:d97:cccb with SMTP id
 g21-20020a056870c39500b001440d97cccbls1748765oao.1.-pod-prod-gmail; Mon, 05
 Dec 2022 09:29:41 -0800 (PST)
X-Received: by 2002:a05:6870:4625:b0:132:93d1:5f5 with SMTP id z37-20020a056870462500b0013293d105f5mr48928423oao.133.1670261381864;
        Mon, 05 Dec 2022 09:29:41 -0800 (PST)
Received: by 2002:aca:4341:0:b0:355:6b46:5158 with SMTP id 5614622812f47-35b761c4be3msb6e;
        Tue, 29 Nov 2022 09:42:43 -0800 (PST)
X-Received: by 2002:a17:902:7d98:b0:17e:6852:1191 with SMTP id a24-20020a1709027d9800b0017e68521191mr48569337plm.159.1669743763318;
        Tue, 29 Nov 2022 09:42:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669743763; cv=none;
        d=google.com; s=arc-20160816;
        b=lI7e5ZH5j1bS9x/Nziv2fp8lx3HlI0NR3cvk1iVr5U8OzZFFW//O1sUpQ1fWfbNA+3
         WTWLiVAJQUdV5bH7eBmawETAGuJS5Q45hwn+84PieQLJQIcvjAdG+li83S3by+jjzPQA
         OsLYO8QtCOcFsmc+OjL3OerTiDMFzorGMgt+P0oIO3h54NK8wO/yxlY9RfH3428v6+ym
         CCup/aZO755Rm6P9OVN98n7UnHIbTZ885CBycBlHBm1+8vhD8sEBvu3GhSyQmNWJStY6
         qgDRPKfjoUxyBCEp6kncmDrypR/E++N/FwfjR8vszhWdLt24aLGLY9hxUq8BGBo+zEbM
         3qZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=lI1SnYDQnoAIwuHc+2Au1N5HfzgXszJlpUCPTOWFs38=;
        b=F0xk87mmvQfJD18UdqJuI3VNWMHQgP5jX+n3WZHwxktoamUh3bBpUR2nbBHPoyG6hI
         oMbFZvRld2iVNmuGz3swo/eXDvwpUyEPoL+gf9sjrWJPViEwgqMqfFi7tGXwbDps+5Ml
         697P0oZv6CU1Cf4fiTrzfCdZKAC8cIHQpdkVer83nXJPiUdiDt9ZUpyVcSdgrWzpl/T+
         T86MNXb+fNnjVpZWycwPL14bIIQbkWiZUy0khowO4r+bYJZUGBDnUixJOoY6p5Ib1Rgk
         UEW0OGUvScjUDxQL1/ar6POE6HXcYOS1a4PaZTLwQMoMiVDpf76oN4AyjydyIBif+4BA
         kfJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QUm6mA5J;
       spf=pass (google.com: domain of jlayton@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by gmr-mx.google.com with ESMTPS id k192-20020a636fc9000000b004772aed5c8bsi637848pgc.1.2022.11.29.09.42.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Nov 2022 09:42:43 -0800 (PST)
Received-SPF: pass (google.com: domain of jlayton@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 1BB80CE13C9;
	Tue, 29 Nov 2022 17:42:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88D66C433C1;
	Tue, 29 Nov 2022 17:42:34 +0000 (UTC)
Message-ID: <d0a8f7a5e307e201926ae8e80d629da10c706a91.camel@kernel.org>
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
From: Jeff Layton <jlayton@kernel.org>
To: Christoph Hellwig <hch@lst.de>, Benjamin Coddington <bcodding@redhat.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, Philipp Reisner
 <philipp.reisner@linbit.com>, Lars Ellenberg <lars.ellenberg@linbit.com>, 
 Christoph =?ISO-8859-1?Q?B=F6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>, Keith
 Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Lee Duncan
 <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,  Mike Christie
 <michael.christie@oracle.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Valentina Manea
 <valentina.manea.m@gmail.com>, Shuah Khan <shuah@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, David Howells
 <dhowells@redhat.com>, Marc Dionne <marc.dionne@auristor.com>, Steve French
 <sfrench@samba.org>, Christine Caulfield <ccaulfie@redhat.com>, David
 Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker
 <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Eric Van
 Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Ilya Dryomov
 <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>, Anna Schumaker <anna@kernel.org>, Chuck
 Lever <chuck.lever@oracle.com>, drbd-dev@lists.linbit.com, 
 linux-block@vger.kernel.org, nbd@other.debian.org, 
 linux-nvme@lists.infradead.org, open-iscsi@googlegroups.com, 
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org, 
 samba-technical@lists.samba.org, cluster-devel@redhat.com, 
 ocfs2-devel@oss.oracle.com, v9fs-developer@lists.sourceforge.net, 
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org
Date: Tue, 29 Nov 2022 12:42:33 -0500
In-Reply-To: <20221129140242.GA15747@lst.de>
References: <cover.1669036433.git.bcodding@redhat.com>
	 <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
	 <20221129140242.GA15747@lst.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.46.1 (3.46.1-1.fc37)
MIME-Version: 1.0
X-Original-Sender: jlayton@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QUm6mA5J;       spf=pass
 (google.com: domain of jlayton@kernel.org designates 145.40.73.55 as
 permitted sender) smtp.mailfrom=jlayton@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, 2022-11-29 at 15:02 +0100, Christoph Hellwig wrote:
> Hmm.  Having to set a flag to not accidentally corrupt per-task
> state seems a bit fragile.  Wouldn't it make sense to find a way to opt
> into the feature only for sockets created from the syscall layer?

I agree that that would be cleaner. task_frag should have been an opt-in
thing all along. That change regressed all of the in-kernel users of
sockets.

Where would be the right place to set that flag for only userland
sockets? A lot of the in-kernel socket users hook into the socket API at
a fairly high-level. 9P and CIFS, for instance, call __sock_create.

We could set it in the syscall handlers (and maybe in iouring) I
suppose, but that seems like the wrong thing to do too.

In the absence of a clean place to do this, I think we're going to be
stuck doing it the way Ben has proposed...
-- 
Jeff Layton <jlayton@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/d0a8f7a5e307e201926ae8e80d629da10c706a91.camel%40kernel.org.
