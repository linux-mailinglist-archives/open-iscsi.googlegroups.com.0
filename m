Return-Path: <open-iscsi+bncBC6MFJWO34DBBHMN5T7AKGQEYKGZMVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0462DCCEA
	for <lists+open-iscsi@lfdr.de>; Thu, 17 Dec 2020 08:19:58 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id 7sf15147994lfz.12
        for <lists+open-iscsi@lfdr.de>; Wed, 16 Dec 2020 23:19:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608189597; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zwt8lyz0lBAJbNEneYM7S05aB4VYiSacd4liNezJtKzX2Gz+uwL3wNOFUm0f/tLGQq
         zMIAhBl3xuopmGemHMp5LQrco2UFQ48fEga18QJ+phXXDr5ON4rvL1os6Iz9xAKm4ihK
         Tthm0GKTvPorQ1Fo1JMwuksM7OC1lrktKasm1vZxmAJQmVyNL8cNRMnFl9tJKJv+N8mz
         GxHbvr8LZI8Jqg9QwPqxj5AWeTteMSJvzlAAh/1uWCHAOvM9pec23a5mLLscT0eU8n2F
         jAWBSNhdgXWPJr4Y3Df5MlH085NW4h8z0A1U+XlQpvOFHEKXYBj1uPmIwqupv6a5/vEy
         /EKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=aR1Z34YKV/qPNaFedtOL1drpwn4X9CJRO2oMg4+uHS0=;
        b=QvqKVkw81l+oOghTT2RuzFxQ2iTMvrPHtk5GzXf1Zzj7VZoe/lYogUdiJLG5BdzWVs
         f9o6lLfnNDoDjbsa0Z8bKUyWqi6f7i7P/VgW0jn9VFOnt9JDEA721s/995q1dIlSaeGI
         sXnCBgIBW5jln1L1av2OR3ZKkBsmFRzQozSvXADzAuZqQAZBwPthQw/wEJgkip0DOhcA
         cp5wbr4rtPIygKRxVyYdjZJwuvnnyaMeK8Glo0JuPSNUcYMlHDSEC+B1WlyhcK0hTHMl
         rYeBTBjQeABFPfHQtXeACrGxmxdPQHGTf+pzOLJj1ttN1PpWlPPoirZ2gVU7km9l08ox
         AYBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=aR1Z34YKV/qPNaFedtOL1drpwn4X9CJRO2oMg4+uHS0=;
        b=LDAB+DloPADqzSHuLZrpWFOdIpJkR6iaF4o0T9JKfxy75QuDL39i+GDj36sIh08vJu
         wmukmV4frRW58Dr/1AbIoTPtWNrqENSPhnzikd1ndbclopDwssCQiYvAmaIEz+w4YulN
         wTdAza4xTK1v31HP9X+KcyNTgxqQZJ57UGbOxT9oKNYWDSgvPlw1dyroe2sfcqiFC02j
         FT6etaP7ZNTuKsPBHSzN1dXAgaZYQO7bxCWVknBjiZRfsvUt90pVHrHZY2XXIrJklYHx
         xHEURK11IcYMroq9uh/N046Hz+5DKfs3ZDVV7tIs3D1VmnoNRry9KUdgVAS2Pk7bD+l3
         DeMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aR1Z34YKV/qPNaFedtOL1drpwn4X9CJRO2oMg4+uHS0=;
        b=hfWAy49rdpHxnqeEhQbjwoPXt/sG/8uqP3YYBNImoPtNYg0iPvwQcPyl9jJ+gHmmHN
         bnjhUuFTgn7SvZON1B64UArfjYYb9jkVhgzuwrZXmKJeagnxfI4tSs4xHoKOJo1VWoql
         6DwzCs/HlitLCfCZv4um5cNMb2ZaXXNfYFNRnqwynCVOR9iSpH4EB3TysSVPEmlJ4GzY
         i7+qyjDRQAy3svww5MSdzjmZD65XFzy8Dx8HP9BStz9aheM7sqrcwqC1VvO0fTXpf7FD
         Ncvx7Lx4wigTAZBWl3J2m721hD4vdqWAu4de6Xlw5mHJtKtHP1DkedEX2YpeYjE29bOt
         gMZA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533Mb93WfAXbCweGNwq/s67OShz0fHDesKM0O9URDr8rGDvDlUtk
	XNyRyCYbTliaigzhjpfVeQg=
X-Google-Smtp-Source: ABdhPJw674FSvELi78TtSyUf+c/BCKW7XFcMw9VMV80N+pGhjx83xAcKPzUGVkdBQ73v+5nXWaKBug==
X-Received: by 2002:a19:5e03:: with SMTP id s3mr14218237lfb.186.1608189597634;
        Wed, 16 Dec 2020 23:19:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:3614:: with SMTP id d20ls5636837lja.6.gmail; Wed, 16 Dec
 2020 23:19:56 -0800 (PST)
X-Received: by 2002:a2e:6a1a:: with SMTP id f26mr16681414ljc.416.1608189596460;
        Wed, 16 Dec 2020 23:19:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608189596; cv=none;
        d=google.com; s=arc-20160816;
        b=QqLHfb6ssTe0WZ6lLJas/tXDfX6fqzfsGCitb7xu3tqSL71HO7sgRn2nGSpvbhnVLo
         HAOQdozlwmhQ6GTqhqqBqTsyywvO/8AGUKhWnmSoK+PYNF/VYLE4tuphmPSJp+Nxq/+k
         UIHCzQLYbP35u41J7k1B+PUKWynv0qj7iY+xVQvsGZBJ1Y76UaJA09HhL3puyFel1lQq
         h0kmohiXtTZ2V1vCdOeVB/gRzDdom/xt+W/oUOVtfnSS2BNEmnJRG6a6CeWdeeVHFen7
         bIZYtjsUFGZrqvGqg3UA8LHtL+Ua+SnL421oXaRfq8OUOChxUYLU1BKzc8ko208d4Jvq
         1LIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=6JRwKho2VS0gS5baMTIjDwhfYiksA0AtE6Gd0fUKIrA=;
        b=pm3g8Av5/HX0GCgxbE7o3+a2J9TS4kgxJZpnbL2czrl3FRsiOBodPCn2WIsH7YDEYH
         C+2Nth8k3lA0HnBFje5Oa8T1KOjm53EGfFZRK/EAXj8+DiEq+ETjUznxBIsoywhaI+yn
         BRBQq82dWHRlIVHH3IRTamikq/KoSGEoueIDY+lCoEMFeVbEW67TphmxZpEaSvsSkFr8
         7QPw/cJEl3uDfOfifNbp+0X3C83cdVZMClf/r0rQi7oLOr9sLH5n/6Vr9Kc+oQoewbKZ
         UcqUqXgw/eLdKOV8BoJLgJCt9Fq1KSslsuJRdBg7eNf1eEGDcE8qX8NYmoyo+F299Wjb
         twcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [194.94.157.147])
        by gmr-mx.google.com with ESMTPS id j15si261411lfk.12.2020.12.16.23.19.56
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Dec 2020 23:19:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.147 as permitted sender) client-ip=194.94.157.147;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id E932A600004E
	for <open-iscsi@googlegroups.com>; Thu, 17 Dec 2020 08:19:54 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id 9BD75600004D
	for <open-iscsi@googlegroups.com>; Thu, 17 Dec 2020 08:19:54 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 17 Dec 2020 08:19:54 +0100
Message-Id: <5FDB0699020000A10003D9DF@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.0
Date: Thu, 17 Dec 2020 08:19:53 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] Hi help me please
References: <dd922e70-a4b0-4d61-aed1-ef8eca287926n@googlegroups.com>
In-Reply-To: <dd922e70-a4b0-4d61-aed1-ef8eca287926n@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.147 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> go xayyasang <goxayyasang@gmail.com> schrieb am 06.12.2020 um 15:38 in
Nachricht <dd922e70-a4b0-4d61-aed1-ef8eca287926n@googlegroups.com>:
> [root@target ~]# iscsiadm -m node -o show
> iscsiadm: No records found

Hi!

Obviously something is not as you expect. Without knowing details, nobody can help you.
Please take the time to explain what you did and what you do expect. Details, please!

Regards,
Ulrich

> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/dd922e70-a4b0-4d61-aed1-ef8eca28 
> 7926n%40googlegroups.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5FDB0699020000A10003D9DF%40gwsmtp.uni-regensburg.de.
