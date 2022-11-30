Return-Path: <open-iscsi+bncBDXJFKUVUEHRBJGVXCOAMGQEVMJNZZY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 601FC642EC7
	for <lists+open-iscsi@lfdr.de>; Mon,  5 Dec 2022 18:30:14 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id j13-20020a05620a410d00b006e08208eb31sf17759037qko.3
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Dec 2022 09:30:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670261413; cv=pass;
        d=google.com; s=arc-20160816;
        b=vU6lqo9pkz9nhqt5e3ln13Lw7hiXJ2QjLTGQGAZ5/hD70UrDd+RTswn8M2NqRWMdiE
         UeSjQ1uTr3Vod2MOecHk74ZXCj0e3THw2NhUqeJdu2pokQI8v/cDKMJG1lMpUW+2OEBa
         l0eqq4EucS/G7i4IZM1d0Y7DB1q13cHzG7NeDh5Fj1ksn6hN/bDmglt9HD08IrQgDJqo
         mNd4pL/Iw4ydycoyYik0g0McHeMEFi5SaUJp5Itvz6/KEht1/mimDPvvevKr/a63typj
         qnayK+WUDSrmhI0NjO+7uElZjrfgNvM9ccg2V7lXysyK+FtbQFUNXL4CwJxtGsTcFdrp
         wQZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=LT8SDUf0TKWFYnrDDNDDommXdL/GjWxMNfFPxmjaW6Y=;
        b=Auc+eB6g4gvM5Lwl9jW5Nss5LsmIkOxCREQiHitRRSO4UeqxLEUV3+Np0C2kBz7K38
         X7ZOyBZiDnwXqY7bfSrYB/YdPgNx6WEppWvrSCqlR1ku12UlCbKDMS080JepZ2rC6Nd0
         Zer9Mpcse0TB/aj9xPq5pZo0oRBTksbfE1t6PZn6YVr5Hk8EZEUs324y/t0xxFjasTZG
         3AwljLsGd+5shib21T4MAknl+QZ8zB5/zUdDbgAufyPnnGrShFyddoKcfZ6fLTAzYseP
         blrENU/pT0bKuiC5v7nJFMBhzNnXY1DoGKrk4kORTbe1PE46cYPAXZhZP0d25KE4/WK8
         Nuzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ix/AyPur";
       spf=pass (google.com: domain of gnault@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=gnault@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LT8SDUf0TKWFYnrDDNDDommXdL/GjWxMNfFPxmjaW6Y=;
        b=nBNAXvip2gL8DHy/u19vsXhUEV7RqAgRlEZa3+iHVju9pQcTMsl1p9J0gjznp8vTTL
         oi17uhcjb2TBDiLO8Za7Wrv1LMqCmD7tMi9ZH6vFzCG6Mx0s9ZOT2dcvXI8O5JCBKxNF
         ps3rAggItAC0KrKopqmEBCEsELR8YoM0EIaS+UqPeodITcsS7IwUR2p9ed2/e5r8zvzM
         Hvcvkw6CHrwNqH1ej26nD3kaY3oCAtzO19MIuxzmAx4w0FLTHqj5o/l2OGnHIkW9ufN+
         yN9bWez0LNvb8HJFP1mprP2qcdilb03B3kS8bOVeedapfc0lk2HJLsTHittQBqizSZxW
         8kfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LT8SDUf0TKWFYnrDDNDDommXdL/GjWxMNfFPxmjaW6Y=;
        b=4QKJZOzLVprm2Kr+QsBXkgf1+gYvTuZQiUPSAD3TrByFejU/rWBMX9AIFh+LsSBcLp
         LAmMdQ+cdaFpVdAzqvhEsUXqv/bTUbnmSr7kFRlzGzXJu5FWC2jn5lH60M1kPn0X/I64
         CHbWi4lYlH55M/4nFkDNhWuFij6dpPH2INMlXaD+jfKSOjMplao7rvHsKA7KzQxI9nw6
         wivbQj5TIYYgfjSkUUiAPG9iRV6GhMIw7r9zJeJNI1vrxRbb7O26Pli2KBmcqY7MpwK7
         ufCnx0jy4//7HZfcnNt2xziHjEHqwxBwTfGGMiPOVgqYK79HTjMrO1c58piMWQ8v0K6K
         T4Aw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnPe7Ovx6j3iqXk1/5wzd02m87TxNcPEKduEtnDYnvVQtBxkm7t
	toyUpQJvYZl4ocDNWtXNgKs=
X-Google-Smtp-Source: AA0mqf4tDIN5rrOWc+rHsSU0RfLt1YDOxoguLfCRk6RjrFEadd7sa/h03ojlitaqe4QmJUtEm01kSA==
X-Received: by 2002:a0c:ee91:0:b0:4c6:b274:273a with SMTP id u17-20020a0cee91000000b004c6b274273amr60274426qvr.99.1670261413343;
        Mon, 05 Dec 2022 09:30:13 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:6c2:0:b0:3a6:a289:7393 with SMTP id j2-20020ac806c2000000b003a6a2897393ls3524442qth.11.-pod-prod-gmail;
 Mon, 05 Dec 2022 09:30:11 -0800 (PST)
X-Received: by 2002:ac8:544c:0:b0:3a7:e8da:6788 with SMTP id d12-20020ac8544c000000b003a7e8da6788mr1849116qtq.85.1670261411872;
        Mon, 05 Dec 2022 09:30:11 -0800 (PST)
Received: by 2002:a05:620a:4113:b0:6ee:e13b:85df with SMTP id af79cd13be357-6fc11387a63ms85a;
        Wed, 30 Nov 2022 04:07:40 -0800 (PST)
X-Received: by 2002:ac8:1081:0:b0:3a5:2615:5698 with SMTP id a1-20020ac81081000000b003a526155698mr56721373qtj.275.1669810059826;
        Wed, 30 Nov 2022 04:07:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669810059; cv=none;
        d=google.com; s=arc-20160816;
        b=JmG1FBbOa0SR/Eyw+xwH/FcL0zOdFZFe9DyZc8C9Y/u8HnlJf1GQKcDlO3/4TEG+uJ
         Oqn9I368H0CC0raGqbSZgl7oy3WO5wxNbiKiQJPKt06czwsKnXiDvpzWbtd4ZIDQQlcl
         J0Zs28/0tf5V/rv8W9mniJ+zePDpf2cahHJMD00CnyJKMdYsEnERfzT+c4Zl9aaFsI0v
         CtmwpqUpQ6ZEoavBkY1Q0/M74ZYjuWyaKPmq2gvMWnYwQieWe3hJooXuTWWa6ZGHY1za
         OC7zeiqnN3wisRwFAYZPvA9yQSbOHbK7oCfe/aWdkRxOLxpRs0ygyBaZzZrZuo5xaPYE
         TcYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jnVdlteFV26Z76cEF4gxE55CdPW4P3QACX8nQF2ZXTo=;
        b=qy+DFc8NZf0Tgoubm0RToAHwQ2XoNLtkCx3/v2udo3GJ8U9IiyprZIpjbgwKBynUxM
         w+i64YEjih6RqzVWrco8KZSi/6yGBWBYbFI195s6iVb3r/4ckLDwq94QXztV/UFxnl/k
         iG41hE77GJ7tFVI2XVOMrvgS2KiuzWdC9R07K+hDViDw0bGMkTJJ6jSDqv0hkbbARRvW
         aNtO/MGLdVQdklGC3wde7ULLtIKNqeMQrrQ0GPLQvDESYAJcs3/eQ67zyIpHQ38XYmr7
         C1f2gwMBCcRbiH0VmIXXFwEM2YR9kyqm6ZJPHkWVPyORXqzsHMoe8njYWAx0CyZB+SfH
         1MnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ix/AyPur";
       spf=pass (google.com: domain of gnault@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=gnault@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id m13-20020ae9f20d000000b006fa81f6aaf7si46594qkg.7.2022.11.30.04.07.39
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 04:07:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gnault@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-520--9XuSxuJM-2_39OonMUZcA-1; Wed, 30 Nov 2022 07:07:38 -0500
X-MC-Unique: -9XuSxuJM-2_39OonMUZcA-1
Received: by mail-wr1-f69.google.com with SMTP id e7-20020adf9bc7000000b00242121eebe2so2333040wrc.3
        for <open-iscsi@googlegroups.com>; Wed, 30 Nov 2022 04:07:37 -0800 (PST)
X-Received: by 2002:a05:600c:3c8e:b0:3d0:69f4:d3d0 with SMTP id bg14-20020a05600c3c8e00b003d069f4d3d0mr4598096wmb.93.1669810056112;
        Wed, 30 Nov 2022 04:07:36 -0800 (PST)
X-Received: by 2002:a05:600c:3c8e:b0:3d0:69f4:d3d0 with SMTP id bg14-20020a05600c3c8e00b003d069f4d3d0mr4598054wmb.93.1669810055886;
        Wed, 30 Nov 2022 04:07:35 -0800 (PST)
Received: from pc-4.home (2a01cb058918ce00dd1a5a4f9908f2d5.ipv6.abo.wanadoo.fr. [2a01:cb05:8918:ce00:dd1a:5a4f:9908:f2d5])
        by smtp.gmail.com with ESMTPSA id j3-20020adfd203000000b002366c3eefccsm1368822wrh.109.2022.11.30.04.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 04:07:35 -0800 (PST)
Date: Wed, 30 Nov 2022 13:07:32 +0100
From: Guillaume Nault <gnault@redhat.com>
To: Benjamin Coddington <bcodding@redhat.com>
Cc: Christoph Hellwig <hch@lst.de>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Lars Ellenberg <lars.ellenberg@linbit.com>,
	Christoph =?iso-8859-1?Q?B=F6hmwalder?= <christoph.boehmwalder@linbit.com>,
	Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>,
	Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Valentina Manea <valentina.manea.m@gmail.com>,
	Shuah Khan <shuah@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Howells <dhowells@redhat.com>,
	Marc Dionne <marc.dionne@auristor.com>,
	Steve French <sfrench@samba.org>,
	Christine Caulfield <ccaulfie@redhat.com>,
	David Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>,
	Joel Becker <jlbec@evilplan.org>,
	Joseph Qi <joseph.qi@linux.alibaba.com>,
	Eric Van Hensbergen <ericvh@gmail.com>,
	Latchesar Ionkov <lucho@ionkov.net>,
	Dominique Martinet <asmadeus@codewreck.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
	Trond Myklebust <trond.myklebust@hammerspace.com>,
	Anna Schumaker <anna@kernel.org>,
	Chuck Lever <chuck.lever@oracle.com>,
	Jeff Layton <jlayton@kernel.org>, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, nbd@other.debian.org,
	linux-nvme@lists.infradead.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
	samba-technical@lists.samba.org, cluster-devel@redhat.com,
	ocfs2-devel@oss.oracle.com, v9fs-developer@lists.sourceforge.net,
	ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
Message-ID: <20221130120732.GB29316@pc-4.home>
References: <cover.1669036433.git.bcodding@redhat.com>
 <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <20221129140242.GA15747@lst.de>
 <794DBAB0-EDAF-4DA2-A837-C1F99916BC8E@redhat.com>
MIME-Version: 1.0
In-Reply-To: <794DBAB0-EDAF-4DA2-A837-C1F99916BC8E@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: gnault@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Ix/AyPur";
       spf=pass (google.com: domain of gnault@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=gnault@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Nov 29, 2022 at 11:47:47AM -0500, Benjamin Coddington wrote:
> On 29 Nov 2022, at 9:02, Christoph Hellwig wrote:
> 
> > Hmm.  Having to set a flag to not accidentally corrupt per-task
> > state seems a bit fragile.  Wouldn't it make sense to find a way to opt
> > into the feature only for sockets created from the syscall layer?
> 
> It's totally fragile, and that's why it's currently broken in production.
> The fragile ship sailed when networking decided to depend on users setting
> the socket's GFP_ flags correctly to avoid corruption.
> 
> Meantime, this problem needs fixing in a way that makes everyone happy.
> This fix doesn't make it less fragile, but it may (hopefully) address the
> previous criticisms enough that something gets done to fix it.

Also, let's remember that while we're discussing how the kernel sould
work in an ideal world, the reality is that production NFS systems
crash randomly upon memory reclaim since commit a1231fda7e94 ("SUNRPC:
Set memalloc_nofs_save() on all rpciod/xprtiod jobs"). Fixing that is
just a matter of re-introducing GFP_NOFS on SUNRPC sockets (which has
been proposed several times already). Then we'll have plenty of time
to argue about how networking should use the per-task page_frag and
how to remove GFP_NOFS in the long term.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20221130120732.GB29316%40pc-4.home.
