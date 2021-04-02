Return-Path: <open-iscsi+bncBAABBW6EXWBQMGQEBO6KQOI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF80358E0C
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Apr 2021 22:06:52 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id b127sf2000291qkf.19
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Apr 2021 13:06:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617912412; cv=pass;
        d=google.com; s=arc-20160816;
        b=eb5LPG8zSk9YUVrCBHJFO8AMP/CbHhCTCaKtUYHkXRQLW8tKn1iYZGbb0hLdsRiID7
         FD3cGPL3yu5XrQY1utGBt/NRocD4oXCgi/XubmptrAtiHEmlnfJogehVk2Fxr2coFRVs
         rTnymN8ybZEMURDD8KlVzoCG8HCnOlWHzkPhBFUBWpChVrHPO7kPRuCD9MNaL4+L1pyg
         +imS1lNEUBxV0/zajzUCTG1dCoS83dn98Yt+feybhY5JmQhbENW5ctgCOuGyKPMkOeN4
         Nx4LMLqnjkxWcddNmnHufLHKI3BJpxxuqL3TU/8oae8XmkSDnA1+DJgjDmEhmpkRYxd5
         DdFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Yb0zh7EGDQJ2nfhHzOiw2iSGBlCh1Nog1Lhham0CeJE=;
        b=VmDSyDNJVBxtmLbq5PauPABzLq6FGVOFOZaJEHHWOVEh9u6tamLtNigq/XaOZ7KVxz
         HZsE5tLHtfdRW/jo7csUjW14GiW5NYZTjz6KL0htrIuHbAFw6+iWYhW25N0k079B26Sw
         RCJMVsmTS1ejGXV00iSeJvdNmb1S6QvvGaaMby+VOOwApnDI8+9nxpebTxO+HDhJPIrR
         v2EjS/bqtisSADUatcGe/hWTPoSUa5d9IWnpU5KMNXi+jSv1t3VizB7Qw7poIT6scIE8
         aKdqUV3CrDYHhxnf9+BUspGLEWH+2sYe42IvxIkomySFoIA4ZGOUpuOpvGefpxvBiV8B
         n6Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=LAQSsv5u;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Yb0zh7EGDQJ2nfhHzOiw2iSGBlCh1Nog1Lhham0CeJE=;
        b=A72Fqu+FEi/OQrT1ij64zNhBgB2WwANjxUhe0TDugN+24hC67AF4H20JfttOp9ZxAi
         G1ca92DUbWnG0DTUfshrdf5YYuHY7OSrMc4zuivRR+4OwmlyNoWCHe2nuiNG1pFvc3/I
         D/rr5hQGEYHDR8RqBwqlBb4Ps2Oi7+Os89z24HY68yK6jgwjtxoBi0sCB9+7xh8AngpR
         R3/UqLogNa0jGn7UaiwKhP2qPwQ+EbwvuWHO958JThhfoEhVuhV+CgI6iVqFp97yRTMo
         WTRuviIndb/4aztLyryNlxPMkw/5R9cRsKwCnLsoJY3hCruf93mLGHEGIe91bLRzX1xC
         1HGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yb0zh7EGDQJ2nfhHzOiw2iSGBlCh1Nog1Lhham0CeJE=;
        b=GaY53YFziRc62Z3w1HKgg4yqlnpP4hrGnuO0xFKlSojeSDGA5VahdLcLa3qNPid5C7
         p3vU+NcsVZTVjZ0ACtOUaSIdl1Pijz+cCD/442ziUfXN2Vvlx4MLWz90ve3bJBa8epXx
         sszGeNp6GISBa2Dex7DQTusNs4B4r4c7B+dLkyrcRQCo2RYvzOwucOd2He5ruGRfss6Z
         86E8x0tAU4KUpnMLbI2sKZK6IuwotnYdNx3lArigOiOFyIR2PV5FGYFHmATypEPU29EV
         d0sDQJ6cEQ1U+d4H6Hn6oK2+7MJFbdfMxe78YiCwqR80WR3CR+pBbbZMy2irC/8XqqF1
         RuOA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532gDupHpU09ldnTwNiygimhAZxp29yGIl8Jwj0tiLNjpJseTRHY
	WaFzYb39hYQSBTFqdWnyN4I=
X-Google-Smtp-Source: ABdhPJz4CvajjOcAFSFc/5nATb4glxqZ/n/3i2nhaqlqU3jQYVwLvpS0oGCV/hIxLgSQVL6u4INI1g==
X-Received: by 2002:a37:bbc4:: with SMTP id l187mr10171141qkf.153.1617912411880;
        Thu, 08 Apr 2021 13:06:51 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5a88:: with SMTP id c8ls2720542qtc.1.gmail; Thu, 08 Apr
 2021 13:06:51 -0700 (PDT)
X-Received: by 2002:ac8:425a:: with SMTP id r26mr9045187qtm.328.1617912411426;
        Thu, 08 Apr 2021 13:06:51 -0700 (PDT)
Received: by 2002:a05:620a:9dd:b029:25f:802a:e70f with SMTP id y29-20020a05620a09ddb029025f802ae70fmsqky;
        Fri, 2 Apr 2021 07:43:00 -0700 (PDT)
X-Received: by 2002:a1c:e155:: with SMTP id y82mr3663116wmg.99.1617374579552;
        Fri, 02 Apr 2021 07:42:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617374579; cv=none;
        d=google.com; s=arc-20160816;
        b=Sipk+uEmKktehVikrd/c+GcMa0qR3PGtGdYuOyDmZBcHTUQxS8qGkyF41toVAEuzuF
         I8eEXI8V7rRXXbQIHnzemsL0BwTuAc9JCaiG2Rz2xtUKhs9Rs8sZe4JDkg9yPF+stKhf
         5z6LhO+pkSP6qeCHzBnBdMbf7mwZRB5Vqtua1ZtYOhMKjQhIW2+GqF/0BfZ2OPwIydT8
         w2mcWKnRBWZ0e31ZGnwe6hQTUDJULzZffM4UAdaK+KTWzEAJBr7NaRd7LQZJlgPz8b2l
         yaYmix/Uv0kbYUwwQ6HlqUuUAGWx0IvEPVhT4ks0HpdPCUqGM1C/EdmVPeui9HzWEGJo
         Y+/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Bw7ISwmFV0i1SzllnQ2AVohh/lybr5ParuExcTXKJKg=;
        b=WMdYmqVW3276yT6377zHExnoGOL17mC8Z2mG5XYhhC6qS6+zB+dJT/rwOog1Vt2msV
         RYVU16opJvEJP2I9jnRbPIA2TO3svmlGelv6s8e5GnzZD20zEpJhl4psJBjhT0pL04OF
         gCeFeUXSfCUmRvI5LCWzVDrXiZl0rJCpI7XiqIHxR/UAcL0jbVp8roAEqIPj29Z8MFb+
         zYZVaCnrdn/WQFLNbvRK7+++oSdjfmBgHMTz9MfTnbtdnYa0YwltNUTZaO666jrpGQ7V
         EfL9MuxMO4OCDD4zOv8YYXTzNYdv6w4UYFNqXcrTxZk4GSRI+oZleCRVMMcC9IT4xdaN
         24fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=LAQSsv5u;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s1si1161545wru.4.2021.04.02.07.42.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Apr 2021 07:42:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lSKzA-007kKL-30; Fri, 02 Apr 2021 14:42:21 +0000
Date: Fri, 2 Apr 2021 15:41:20 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: yangerkun <yangerkun@huawei.com>, stable@vger.kernel.org,
	vbabka@suse.cz, linux-mm@kvack.org, open-iscsi@googlegroups.com,
	cleech@redhat.com, "zhangyi (F)" <yi.zhang@huawei.com>,
	Kefeng Wang <wangkefeng.wang@huawei.com>, liuyongqiang13@huawei.com,
	"Zhengyejian (Zetta)" <zhengyejian1@huawei.com>,
	Yang Yingliang <yangyingliang@huawei.com>, chenzhou10@huawei.com
Subject: Re: [QUESTION] WARNNING after 3d8e2128f26a ("sysfs: Add sysfs_emit
 and sysfs_emit_at to format sysfs output")
Message-ID: <20210402144120.GO351017@casper.infradead.org>
References: <5837f5d9-2235-3ac2-f3f2-712e6cf4da5c@huawei.com>
 <YGbLiIL8ewIX1Hrt@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YGbLiIL8ewIX1Hrt@kroah.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=LAQSsv5u;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Fri, Apr 02, 2021 at 09:45:12AM +0200, Greg KH wrote:
> Why is the buffer alignment considered a "waste" here?  If that change
> is in Linus's tree and newer kernels (it showed up in 5.4 which was
> released quite a while ago), where are the people complaining about it
> there?
> 
> I think backporting 59bb47985c1d ("mm, sl[aou]b: guarantee natural
> alignment for kmalloc(power-of-two)") seems like the correct thing to do
> here to bring things into alignment (pun intended) with newer kernels.

It's only a waste for slabs which need things like redzones (eg we could
get 7 512-byte allocations out of a 4kB page with a 64 byte redzone
and no alignment ; with alignment we can only get four).  Since slub
can enable/disable redzones on a per-slab basis, and redzones aren't
terribly interesting now that we have kasan/kfence, nobody really cares.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20210402144120.GO351017%40casper.infradead.org.
