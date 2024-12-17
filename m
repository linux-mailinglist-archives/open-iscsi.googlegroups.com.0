Return-Path: <open-iscsi+bncBDUNBGN3R4KRBN7OQO5QMGQEXJTMVEY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B7C9F416B
	for <lists+open-iscsi@lfdr.de>; Tue, 17 Dec 2024 04:59:58 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id 4fb4d7f45d1cf-5d3ec94ccbdsf1778124a12.0
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Dec 2024 19:59:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734407998; cv=pass;
        d=google.com; s=arc-20240605;
        b=EZv0Oe6Tlc6qvcBjgA9kT2bdzfDPJpWj4tdOUoL59vEHmJp7+teyJWHYf5HZcWV8Fq
         dzFXl49p6/L07LGmvlK4Z/Ove2OkqC7gx4qeh5NFENi5G7gaDIA1SR2uRcJi5+1bhIO9
         8iJ+XNqP6+SP2U2i2P1ZAr+4m0CEKSUQa6ONIyMqoM5TmMh84mO/P8C8x70/G3bKOWfj
         TX9XLI4sDYWyAZjQ7Bwgfggj+ruSb7pX6eEC73mcpo1DnynWXyc2tlTgcRU0R9VoEdy6
         rLIioNsr365aPDRH5GuFJYMNomWbkv8MaP+S4RFr22j55YKFT/f0eVcueL90fye1h8IU
         k7+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UZKFY29NAknRErd8eSFBaN5qMd78xyNg0BDC9foX7D4=;
        fh=IO+8PQbh1npjfJahJ3qeKpjhGHXujJnySdD5Ajwj4Bs=;
        b=GNCy5LRd65u0bV5TqTiKiUuPIOtgAras0JQ+TvYBq7KRiGLC9hIMtByPzFY4OenCRT
         AJKXVY/2mFQtwOUwaEhKer9cNPWHWna5TCnvrG+tDUkQ+VJzr1bB/uh3GIv5BUb/HCzk
         hEsOUh27fFm/6r9KWQO1tpZz0ILA0f+I+Q98R0ZxRfY/ylmKnniypRH3dwbwL56IAe68
         X6gb+TIKhlWqAZFqELEvteDKNXWbr9I03nWBQMZ95nWdaAMeecv6xB30DZeXy9zxKyB6
         vMuSKMu8GsetAJicMcK2wMeFstQsX5DmB5Sq/NhavR0MQ5xn8wKh6H2Boo57Q2U5ZgEP
         L/qQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1734407998; x=1735012798; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:user-agent:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UZKFY29NAknRErd8eSFBaN5qMd78xyNg0BDC9foX7D4=;
        b=Tmyuh/uFbRSjhdExHqoN0GunWKQ7p06PNQsxG9CL2j3kLz9rZ7cqK2L+cRo1pM2NWC
         30beuz6pdt+qUMB/pY5x4PixwRD7T3SmpW+UcF5GyQ+3KnmlartFUzorfz+BVHTgHMf9
         bFEGVxL/LAyNwp5VZwgAYR87RhmYhLx1wgXDcXnvJySMIYOHqNZBWwA9isQLDmZd2Gri
         rOBash0OKXdCLjI6Dzx0Jrf5p9n+LPvIegOSO4wXa+iFlm3o3VKGZBJWd5pWIGEXdXVv
         laZ88EZ9kgztN0nKwua8AjUanPqwpxqjHDgWI9/vsc8IoZ7dhMLGL5ZauO6yJhm7nBQ/
         clpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734407998; x=1735012798;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:user-agent
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UZKFY29NAknRErd8eSFBaN5qMd78xyNg0BDC9foX7D4=;
        b=aFVVaM7EZGqgAHD8qcrrXvWdoLjJdRohL3xIt9oL8m2Z1sQ2eg8/MP8od/ghAJwTQu
         aiVGq0yjt8gcENd0F+ttzCYSrSyhqxv4RtwhrfQjDmCMrsmeR8A+fVummJZnIb0TYJrv
         CcWQ3gQQ5YuWz3VmxN0uSO88KHT3ad+1WnxKnd+Ys+4BtEx9m8CQQjVg8tbQapBoL8nJ
         5dXOX6UAvyyzcNnIZBrK2/xirMbl9KV32inCAQGkHz1VPUzqhF8amzOdOCukLhxOubUu
         eNx3fDHCQxXjkPsSTwpSyLC5xekAavmm933+GUnQ4UA5Anm0mN1s97fIRHsOPKXot50L
         w1mw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUf6V9fw6EYKwnr2RnyS+9JLwFL5qAQ5S2h2fxeiMlJZrkS2xFAPUQxhpkTC5eIh8Cy6CqYNA==@lfdr.de
X-Gm-Message-State: AOJu0YzxcJehJwuIFuyW18fPjJTq97RLhvLpXS2cBvdP1TyhKwLjHr7j
	fB2bqi5btZSW3J4pKREl30e4BMmVWrCakrFUGFil1ADDelvQxvUp
X-Google-Smtp-Source: AGHT+IEsu4UP/hKsnXn4+23q401b5ERFG9F6GcWvSJUgjzGzmJr5UkxlDX4kDhM0W0UzF7bR7TYEdQ==
X-Received: by 2002:a05:6402:26c9:b0:5d0:aa2d:6eee with SMTP id 4fb4d7f45d1cf-5d63c3b390cmr13523166a12.26.1734407997021;
        Mon, 16 Dec 2024 19:59:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a50:8d47:0:b0:5d0:bcd8:21e with SMTP id 4fb4d7f45d1cf-5d7c8d00915ls164867a12.0.-pod-prod-06-eu;
 Mon, 16 Dec 2024 19:59:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXMvAnVbFyrTpjZBwqLbUOJshjeIeARbwcwCbUKigjMjb5hRgG/+J3G+QKpeK0DYBa+yF6JAJvvRa+s@googlegroups.com
X-Received: by 2002:a17:907:3da7:b0:a9e:b150:a99d with SMTP id a640c23a62f3a-aab778c3266mr1497270666b.5.1734407989045;
        Mon, 16 Dec 2024 19:59:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734407989; cv=none;
        d=google.com; s=arc-20240605;
        b=eA4AdrbMw7xdfhorD01oxediy6Qfs6hUkkkhNZLGzUC1dO/wHlhnGjnN5SrfmOlWML
         p+5thVr8IFZYP5ZISMyxhZvRu0vZfZcQZeQkeeKtKmP7oa+WBLZ6tbAP04sraVkwBwsu
         A9ji2QDx34ZTupY7q8kWBbDbj4k7fGGts4fqLaWQW/NOS6UKt5sNF4mvqmk9qayrxpqR
         QiJ4AEZkvfCrgdPMBvXUrrLfQrQwI8iB9ov8gOTiiPsGFCv+uzMwiBDuPXBq1Q05q1E5
         7VDtcmerEU44H1rhEXdE6O0/xq9ISwt6XV8udYWmfJE0Zav2vdLeEAlRGceoOynHTr++
         pmpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=GXKY4ibAqf+fScHyj3FgJPIYI3um2k9fkI7luLsdvHI=;
        fh=doNE5N85spFtQ2EBgznShX3bmTK75eH2/Aw8u2tfZfU=;
        b=Mas8aaOsJlkB/v6d01+ovLP69cZsmbom/sdrYmFcfdYTVDk+C6miQAop/9MQXDgf1f
         zx6U5lwPU4iwIyOxudqSmH7qRxTLkM9rr7ONgL4/z87MSDRwkdSzMkdhbcEIZ033/sTH
         0pDwJkKlT/sZ5fnIDumzWXl12xb7Q4XCXMHXlfF7HNCA4mCRzPLQ5RqW4Pwr05pMUpbq
         iD+T4FNCouP5kZx3mIrjFA6T188n3gxG9A6FICpxFPUXFglEMAeCY8fCtCOzFxPOnzi9
         oLencWMRsQHupgv1npmPMkCvghnJJUE9ce/Ww0BXc2bYczAMHhWUhLzWqikLiiJrUMao
         ECaA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id 4fb4d7f45d1cf-5d652f28152si157639a12.3.2024.12.16.19.59.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Dec 2024 19:59:49 -0800 (PST)
Received-SPF: pass (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 8E68768C4E; Tue, 17 Dec 2024 04:59:43 +0100 (CET)
Date: Tue, 17 Dec 2024 04:59:43 +0100
From: Christoph Hellwig <hch@lst.de>
To: Kees Cook <kees@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Cheng Xu <chengyou@linux.alibaba.com>,
	Kai Shen <kaishen@linux.alibaba.com>,
	Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>,
	Christian Benvenuti <benve@cisco.com>,
	Nelson Escobar <neescoba@cisco.com>,
	Bernard Metzler <bmt@zurich.ibm.com>,
	Karsten Keil <isdn@linux-pingi.de>,
	Michal Ostrowski <mostrows@earthlink.net>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>,
	Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
	Chaitanya Kulkarni <kch@nvidia.com>, Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Alexander Aring <aahringo@redhat.com>,
	David Teigland <teigland@redhat.com>,
	Trond Myklebust <trondmy@kernel.org>,
	Anna Schumaker <anna@kernel.org>, Mark Fasheh <mark@fasheh.com>,
	Joel Becker <jlbec@evilplan.org>,
	Joseph Qi <joseph.qi@linux.alibaba.com>,
	Namjae Jeon <linkinjeon@kernel.org>,
	Steve French <sfrench@samba.org>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Tom Talpey <tom@talpey.com>, Simon Horman <horms@kernel.org>,
	Chuck Lever <chuck.lever@oracle.com>,
	Jeff Layton <jlayton@kernel.org>, Neil Brown <neilb@suse.de>,
	Olga Kornievskaia <okorniev@redhat.com>,
	Dai Ngo <Dai.Ngo@oracle.com>, David Ahern <dsahern@kernel.org>,
	Joerg Reuter <jreuter@yaina.de>,
	Marcel Holtmann <marcel@holtmann.org>,
	Johan Hedberg <johan.hedberg@gmail.com>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Oliver Hartkopp <socketcan@hartkopp.net>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Robin van der Gracht <robin@protonic.nl>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Alexandra Winter <wintera@linux.ibm.com>,
	Thorsten Winkler <twinkler@linux.ibm.com>,
	James Chapman <jchapman@katalix.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
	Remi Denis-Courmont <courmisch@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Allison Henderson <allison.henderson@oracle.com>,
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
	Xin Long <lucien.xin@gmail.com>,
	Wenjia Zhang <wenjia@linux.ibm.com>,
	Jan Karcher <jaka@linux.ibm.com>,
	"D. Wythe" <alibuda@linux.alibaba.com>,
	Tony Lu <tonylu@linux.alibaba.com>,
	Wen Gu <guwen@linux.alibaba.com>, Jon Maloy <jmaloy@redhat.com>,
	Ying Xue <ying.xue@windriver.com>,
	Stefano Garzarella <sgarzare@redhat.com>,
	Martin Schiller <ms@dev.tdt.de>,
	Kentaro Takeda <takedakn@nttdata.co.jp>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>,
	Guillaume Nault <gnault@redhat.com>,
	Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>,
	Andrew Morton <akpm@linux-foundation.org>,
	Wu Yunchuan <yunchuan@nfschina.com>,
	Max Gurtovoy <mgurtovoy@nvidia.com>,
	Maurizio Lombardi <mlombard@redhat.com>,
	David Howells <dhowells@redhat.com>,
	Atte =?iso-8859-1?Q?Heikkil=E4?= <atteh.mailbox@gmail.com>,
	Vincent Duvert <vincent.ldev@duvert.net>,
	Denis Kirjanov <kirjanov@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Thomas Huth <thuth@redhat.com>,
	Andrew Waterman <waterman@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Andrej Shadura <andrew.shadura@collabora.co.uk>,
	Ying Hsu <yinghsu@chromium.org>,
	Kuniyuki Iwashima <kuniyu@amazon.com>,
	Tom Parkin <tparkin@katalix.com>,
	Jason Xing <kernelxing@tencent.com>,
	Dan Carpenter <error27@gmail.com>, Hyunwoo Kim <v4bel@theori.io>,
	Bernard Pidoux <f6bvp@free.fr>,
	Sangsoo Lee <constant.lee@samsung.com>,
	Doug Brown <doug@schmorgal.com>,
	Ignat Korchagin <ignat@cloudflare.com>,
	Gou Hao <gouhao@uniontech.com>,
	Mina Almasry <almasrymina@google.com>,
	Abhishek Chauhan <quic_abchauha@quicinc.com>,
	Yajun Deng <yajun.deng@linux.dev>, Michal Luczaj <mhal@rbox.co>,
	Jiri Pirko <jiri@resnulli.us>, syzbot <syzkaller@googlegroups.com>,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
	linux-nvme@lists.infradead.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	target-devel@vger.kernel.org, gfs2@lists.linux.dev,
	linux-nfs@vger.kernel.org, ocfs2-devel@lists.linux.dev,
	linux-cifs@vger.kernel.org, linux-hams@vger.kernel.org,
	linux-bluetooth@vger.kernel.org, linux-can@vger.kernel.org,
	linux-s390@vger.kernel.org, rds-devel@oss.oracle.com,
	linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
	virtualization@lists.linux.dev, linux-x25@vger.kernel.org,
	linux-security-module@vger.kernel.org,
	syzbot+d7ce59b06b3eb14fd218@syzkaller.appspotmail.com,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH] net: Convert proto_ops::getname to sockaddr_storage
Message-ID: <20241217035943.GB14719@lst.de>
References: <20241217023417.work.145-kees@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20241217023417.work.145-kees@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hch@lst.de designates 213.95.11.211 as permitted
 sender) smtp.mailfrom=hch@lst.de
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Would be nice to avoid a bunch of the overly long lines, but the
fundamental changes looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/20241217035943.GB14719%40lst.de.
