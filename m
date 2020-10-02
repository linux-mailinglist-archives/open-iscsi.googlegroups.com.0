Return-Path: <open-iscsi+bncBAABBPPG335QKGQECNSYU4Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BBC281EE5
	for <lists+open-iscsi@lfdr.de>; Sat,  3 Oct 2020 01:09:50 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id y17sf2202977qkf.15
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 16:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=p49oME78OE2JjHSVAs2pOOBLSoVFUZeZgFaTPhWlznw=;
        b=awdxwKxbcFp95FzZSGc57o5GUVSgNWN79YgywJblHgqNyw85dott9OhdgmiqW0ymBZ
         gmG0ub4T7kNWE+Aw7Hddf7ECOtlsCGOcBnBwQ5O0s3Kyzly7i1zDno053H/o1A5pW5+z
         6p5Wf9dRpjAHU8pxCClA2pdvp07U9t5exJJy3HWT0QHGBu5E9u3yIFspYWj3N9aKsA2K
         qC5yWqTN0KxnvJ/7dy7y9SNakoVUj2iArdLtKb5fQNLYSuSBZvYdlyaEhEehrOgJU/pY
         XjrMdnLW02D8/sX6x6EaLwQ9uswfix0N2pdVmaZacINw7TAlsoBUBiXBbg+P1CfnK5H4
         20ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p49oME78OE2JjHSVAs2pOOBLSoVFUZeZgFaTPhWlznw=;
        b=frzo3PvTraMh04o5FKAdbIvraW6DwwLvJE2t2i6gE4UjGcFxbP+aeh8wryYdq6dAVY
         ICvB2KxTgHEIjHT6I5oYRnuoVE5+URT/4inBwrUjT6CfUleYwM5DeAddnaDIMjZLiZuf
         w7vxaeL/E/9TeisJktGSbvzQ9ea82hLl41je2RYFbE+rPQR/7/3nrdtsD63de+hG4RwR
         ihyRuR0ImJmXEVPmG6j1Zt0aYGOR86qvSdJueKS6+saXLnVSxgOrOvrCFIaX95R2QKQ6
         QqnXuEDl+lMUZChDQxy5Kc7r+gVjZGyf/VGdIMDfFNxJuL/N0M2oRk2n4jw+00CUIaUE
         7l7g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5315vu3H06NnbR4n1GrIKCAGYNYP90G54pvZaWwDt5R+IQdLJYuO
	O4FGOSraWF0pDqb4oaZOHzg=
X-Google-Smtp-Source: ABdhPJysSDE6RQUZ3KvFVXhLbttVRY5RO94OPY4rPWarR9M+hjHDVc2PjiFHOc02WVHTTiINf7Gorg==
X-Received: by 2002:ae9:e70c:: with SMTP id m12mr4273744qka.91.1601680189407;
        Fri, 02 Oct 2020 16:09:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:f50b:: with SMTP id l11ls1433722qkk.6.gmail; Fri, 02 Oct
 2020 16:09:48 -0700 (PDT)
X-Received: by 2002:a37:a87:: with SMTP id 129mr2087662qkk.13.1601680188917;
        Fri, 02 Oct 2020 16:09:48 -0700 (PDT)
Received: by 2002:a37:5d42:0:b029:114:f417:e038 with SMTP id r63-20020a375d420000b0290114f417e038msqkb;
        Fri, 2 Oct 2020 15:29:30 -0700 (PDT)
X-Received: by 2002:a2e:7617:: with SMTP id r23mr1387019ljc.78.1601677769774;
        Fri, 02 Oct 2020 15:29:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601677769; cv=none;
        d=google.com; s=arc-20160816;
        b=tqg0zclZh2TmAtAx8VMIl6MfbODn4dQXXx2cCwwS33cHsNj2WCHRcyxqKrMKph7j7D
         PWrr4IIcb8JqN/X9PwyJXmQn3hKD/f1V8nuJnXcDfmBGQZZWkd/lO0pZv6s+pcLHEoWn
         PhUDQZ9PzoJpxfdH/+c6ldKtXEPTity6ZP0fW0QhdFQQ+Td972m6RGbpDhcAdtLSb9NT
         rdVgO56hqIS7wMJ+hy6V4qNW+F9LNj5dGsCZ2BDfBmSfJ4SN3eMTEGITErWvf6g9pkPg
         iRZgoMxPKWf7pkpqxbK9gKZKZjnu6L4CdI3wEh17AJ+Qmq4S9WLY7sLbt+EWm16z2GPP
         P/JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=p49oME78OE2JjHSVAs2pOOBLSoVFUZeZgFaTPhWlznw=;
        b=W+00RyzCljtE1VgBQ/vj6HLyZrQwmQKfr9bi+F1RDbrw5I3VxlBGFGTNLUrJNSC4Yk
         oRumTobk83vIamgp6KSLJc98OTBeo2uWpSe3++Wf4IW2NGRfH3XcaUjm8/kNc+7UUX3d
         9dj2mU/1pqpM9ROMGkD3yXGQCHIAiLzjOE/E31vwTip5GxC9tyFK7wPDngLL8BbZmlVy
         E57SPwgBTe9OKmhJSaXNmtfyXLj9g4a7B9kwY02heBkjP/qYRuhw/mmuzuIgEmIaXChG
         2brULW3Yxt3XbBa08LJYjow8qD/mPXZwZVitqDmkOFGiE0/qLloBo1DyI4rnge2vWYlM
         9IUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id b5si83131lfa.0.2020.10.02.15.29.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 15:29:29 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id E9B2B11E48261;
	Fri,  2 Oct 2020 15:12:38 -0700 (PDT)
Date: Fri, 02 Oct 2020 15:29:25 -0700 (PDT)
Message-Id: <20201002.152925.826224771231840847.davem@davemloft.net>
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
In-Reply-To: <3a46f056-8314-4467-4a11-40d11ddad99e@suse.de>
References: <20201001.124345.2303686561459641833.davem@davemloft.net>
	<20201001.124815.793423380665613978.davem@davemloft.net>
	<3a46f056-8314-4467-4a11-40d11ddad99e@suse.de>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [2620:137:e000::1:9]); Fri, 02 Oct 2020 15:12:39 -0700 (PDT)
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

From: Coly Li <colyli@suse.de>
Date: Fri, 2 Oct 2020 16:30:12 +0800

> Obviously my fault and no excuse for leaking this uncompleted version to
> you. I just re-post a v10 version which I make sure all patches are the
> latest version.
> 
> Sorry for the inconvenience and thank you in advance for taking this set.

How did this happen?

How did you functionally test the patch set if it didn't even compile?

I want you to explain why you sent a completely untested patch set.
