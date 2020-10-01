Return-Path: <open-iscsi+bncBAABBPPG335QKGQECNSYU4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C95E281EE7
	for <lists+open-iscsi@lfdr.de>; Sat,  3 Oct 2020 01:09:50 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id g10sf2239357qto.1
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 16:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4/I3oJlg4pzRv8HwRdLyM8JcbIR9CnP82xCYz5fFNy8=;
        b=ozJUUK/3Jd/aHVELmeDUegrFf4x33X/thixjrswghFP0bFsfafbtOaijQB8Pxp2Z8W
         1YiQv3PJTCpjB06KNtdzoemXBAMX+wkGjOrWG0VVVYhr7E4nGVqC+a+ugj7QJXGXPxlT
         Db1tpS3iGZSixEV2Pxbbl/wGUg83Xqwmj61yf4lVMvckeVvIn0JvH79SFa0KBdY1faGd
         +8oYd5K2o1rILDkSOC1LQyo5CxbsQ6giE9YW8RcYSZSgHH3bO+OAgaZ3HBv5uTjbQwtu
         +WV7X+UzrdWfOGzYb/80TvPPFtVapPzMpAS3lTCJBb+XrO29KmkdkxZHgjtzqwgMCJC0
         quGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/I3oJlg4pzRv8HwRdLyM8JcbIR9CnP82xCYz5fFNy8=;
        b=c/e6OTwQK+lNfvt9msAI0PgKIDzRuJbLr0OSnIXC9lSlCkxSe6kYYP5+XEjjnvXNIj
         DXOsa+ZY+rU0bEEW7G/e7qDdmcwJfsT3xRTdnDv8oEw9hYSQ3WwTbRt4kRiuAVCud8jP
         m8/D8BjVUPqs/KnCbl/0YM8gYGDUcfLO278XpTgp/uSRH1/U6evTSGtDBNwjVYrnxQXO
         4VphfTbnfanXM3G7ti1Wc4bf5yFi3BcTM17slPAgHQtkWU56J4zuAlRANAwPr6E8wJ8s
         FMELPnaokWT/vzTtuRT7P5SwkiNDoqO8faLgwZdhMlr8TxuwEOulmlRhXQDlMc51EZre
         ze0w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530D5XzZdcz73pEKkcQq1fBYtZ4/eIUgKZ6q+CWYkfSoBsNaARo8
	B2zfc2ybqmJQPnmmoEvxhYE=
X-Google-Smtp-Source: ABdhPJzbMbvBTyKpF3Xnb1/Glb7cm6WJ3molDIquNOP1oRLuhHx0jscYJVL/sOzWF9YshH5FwUqoOw==
X-Received: by 2002:ac8:7208:: with SMTP id a8mr4790658qtp.22.1601680189374;
        Fri, 02 Oct 2020 16:09:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e00e:: with SMTP id m14ls1437917qkk.3.gmail; Fri, 02 Oct
 2020 16:09:48 -0700 (PDT)
X-Received: by 2002:a37:a80e:: with SMTP id r14mr4594027qke.85.1601680188916;
        Fri, 02 Oct 2020 16:09:48 -0700 (PDT)
Received: by 2002:a37:8b87:0:b029:102:b6b:b400 with SMTP id n129-20020a378b870000b02901020b6bb400msqkd;
        Thu, 1 Oct 2020 12:48:23 -0700 (PDT)
X-Received: by 2002:a2e:3511:: with SMTP id z17mr2598064ljz.58.1601581702264;
        Thu, 01 Oct 2020 12:48:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601581702; cv=none;
        d=google.com; s=arc-20160816;
        b=Zs9FvwXgLen9OkqDPelX5XpcNVkJI0pgXh/kZHUN3zNq1Zl+SDxqrNKvDuNjDHyLeH
         oqE4p8jZpohYxwqCYxHVxjJdcrfP8wZbh9Bm7Mbc0qkfNigJMleRvfwZwoftiEvzNblz
         NRLMglu151EmgTT2/ZtG/7Xcz6Xj/SF4YVr3oHZrdb/+LyiQtXceeLnu+rmcjMg+ps1L
         Z/QwvOP52sp1hkNMpKTKaqLSS1ZqhCHdmUFs3MJWkxZEX86iFy6ajXHwMCLAHnGnClAW
         hvWpXQmvTITwcvM12j8zNdhfioaqzsqTgQDmi+SfUUBzIdDoWiuqCdnKPiuNK25jaJTc
         67/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=4/I3oJlg4pzRv8HwRdLyM8JcbIR9CnP82xCYz5fFNy8=;
        b=cj/GkVinjLoy4dYscoR2Dlxq+mytLBeGYQu6y4AjvJh5r+pD4/8CY04DCALy+J4iPq
         reQuuGqwKp4ofABvSv1on0dIIb/yCh7kLI+zSijFx3HbhC5g5VpKnQxYDziFr1XKx/zQ
         otK9NhIeQjz4XaWFu500a6Vn6WOU0pgKTZJibs9ubJ9oPwPr2Sk3294THAzVUSp+K0RZ
         TqccCabOeEF62tyGVjZEHQnDO3d7ytgone/xs1a2JALApuVje5CSFM7ds6VBzKIWAXxz
         tjV0NsqoDeNXhGy6+YDk81sDhYyqFWWYPQlktKHEDqlHa72u922IMnrYtg1hiSwrXiCc
         UeIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id x74si166524lff.12.2020.10.01.12.48.21
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 12:48:21 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id DF86014671C73;
	Thu,  1 Oct 2020 12:31:28 -0700 (PDT)
Date: Thu, 01 Oct 2020 12:48:15 -0700 (PDT)
Message-Id: <20201001.124815.793423380665613978.davem@davemloft.net>
To: colyli@suse.de
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 netdev@vger.kernel.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, chaitanya.kulkarni@wdc.com,
 cleech@redhat.com, hch@lst.de, amwang@redhat.com, eric.dumazet@gmail.com,
 hare@suse.de, idryomov@gmail.com, jack@suse.com, jlayton@kernel.org,
 axboe@kernel.dk, lduncan@suse.com, michaelc@cs.wisc.edu,
 mskorzhinskiy@solarflare.com, philipp.reisner@linbit.com,
 sagi@grimberg.me, vvs@virtuozzo.com, vbabka@suse.com
Subject: Re: [PATCH v9 0/7] Introduce sendpage_ok() to detect misused
 sendpage in network related drivers
From: David Miller <davem@davemloft.net>
In-Reply-To: <20201001.124345.2303686561459641833.davem@davemloft.net>
References: <20201001075408.25508-1-colyli@suse.de>
	<20201001.124345.2303686561459641833.davem@davemloft.net>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-8859-7
Content-Transfer-Encoding: base64
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [2620:137:e000::1:9]); Thu, 01 Oct 2020 12:31:29 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

RnJvbTogRGF2aWQgTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0Pg0KRGF0ZTogVGh1LCAwMSBP
Y3QgMjAyMCAxMjo0Mzo0NSAtMDcwMCAoUERUKQ0KDQo+IFNlcmllcyBhcHBsaWVkIGFuZCBxdWV1
ZWQgdXAgZm9yIC1zdGFibGUsIHRoYW5rIHlvdS4NCg0KQWN0dWFsbHksIHRoaXMgZG9lc24ndCBl
dmVuIGJ1aWxkOg0KDQpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9hcmNoL3g4Ni9pbmNsdWRlL2Fz
bS9idWcuaDo5MywNCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYnVnLmg6
NSwNCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvbW1kZWJ1Zy5oOjUsDQog
ICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L21tLmg6OSwNCiAgICAgICAgICAg
ICAgICAgZnJvbSBuZXQvc29ja2V0LmM6NTU6DQpuZXQvc29ja2V0LmM6IEluIGZ1bmN0aW9uIKFr
ZXJuZWxfc2VuZHBhZ2WiOg0KLi9pbmNsdWRlL2FzbS1nZW5lcmljL2J1Zy5oOjk3OjM6IGVycm9y
OiB0b28gZmV3IGFyZ3VtZW50cyB0byBmdW5jdGlvbiChX193YXJuX3ByaW50a6INCiAgIDk3IHwg
ICBfX3dhcm5fcHJpbnRrKGFyZyk7ICAgICBcDQogICAgICB8ICAgXn5+fn5+fn5+fn5+fg0KDQpX
YXMgdGhpcyBldmVuIGJ1aWxkIHRlc3RlZD8NCg0K
