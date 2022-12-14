Return-Path: <open-iscsi+bncBC6MFJWO34DBBSHX4WOAMGQEFYW7VKA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id DA51F64C464
	for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 08:31:23 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id r2-20020a2eb602000000b00279c6301950sf1520705ljn.3
        for <lists+open-iscsi@lfdr.de>; Tue, 13 Dec 2022 23:31:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671003083; cv=pass;
        d=google.com; s=arc-20160816;
        b=IC7GusK01d6BjyuPxIRKOJ5wHI89Q3klQ2pr3m135FmUOLcapHAYKGfgZ3HMLTuKGA
         GNpVd1PJZfJ/+6h2u9KglmaMFpkMaabI9ldtZ9teGhSdAFYrergyoFeK17O2LDWiqQp2
         wXX5wrrOSHdGXfXzXg48sGtZQYugGwtJXtd520drxClh4l0wZ8qMR1hsh2yiRUZ8YcDU
         pwy5pzBj+MzEL/1jBTdJWk+Nc7yEKprt+N10D0gFwyLlT/UWyYgdOP/YkUFt03n2N81s
         MH2DD9l0MHAr8cbr4lxq3igV5/8HRRJdOQ9fv0oWixzSfAAR6juGuC5vt/jNjqEBdRfM
         FxIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=raC7zdyj4QhVCWXQ6MyWjJQxTIsLRE+G6FYkQEMuHKY=;
        b=Vabtx/e2tAF5b0zAyqJ7Cbyy+9ytNOQAC84KheZAeJTAdBjnble0ui1oyCjR53zPYf
         okJuo9b+VyMtXpA4O4BeGqs5KQMKNzMRXXrhCucR9KiVAuGlqZhNQ27cgiVJN8ZF5YVr
         kdVz7i+zaJBarVid2fhdhLoQXwS01nSBrOeDRfKp2HLepelgcZglqCGoWJkOTMQoDioG
         QVS7GbB9SelEHKskx2fbiMxbZiuUWTy5o9I16SJD4ALblCS+TSVo9bSySrDmipXlAEu2
         mQusyWO88IfDfeoyHDha83eBe3NYacqLg/6TdGgfu3Vc9yObQ86nK/mkgge6E1WU1v7R
         DbDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:to
         :from:date:message-id:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=raC7zdyj4QhVCWXQ6MyWjJQxTIsLRE+G6FYkQEMuHKY=;
        b=rjW+cN9PWvEgXZKPQGUyJGCMdbu8A2PCLnK1T+rO1XCS3Xqe/0IimASz0or1mG58I1
         rHm87hgETdG9onBeF36e6g1w3K0hWyZo1XsLQCcW1TgXFi+Zee13WI3Af6CKF09UgC7Z
         7OYBhNzwaj1Wa5bcr0LpLQAkJUimGL+lZD1IX0+fO03J3tw+MJsWNcKR9DGIPX0Am8fp
         qryM6SafDEW+P9oxx1ipRvNyh8ha6gyTuOxa3TXVyZZNh4xffeOc/m1WKuypqoxrxcdn
         Wq3ZvH8V42mtDMPNZ/YG05TJ/dVF9NRwl3nAJ98j1LuSaCAXcSrICYrhyoWQhjRqLtxY
         SP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:in-reply-to:references:subject:to
         :from:date:message-id:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=raC7zdyj4QhVCWXQ6MyWjJQxTIsLRE+G6FYkQEMuHKY=;
        b=YTDjKVuf5vWHHEqyk+zpTN/dnmHDsphyE5E/LUmThHO6D1Wq8ln9KVGNzsuqWYCXzR
         FEIzSXSwrwDM/UEw3FxX1os6eeBuP5K8+xno/tW8clWdMB9piZFpddHUXyx/MQ+KGaiv
         MGNvH9wdBQeHKFvkWfUsHSnc+b2os4l1FrLSGpmvQARZ5AXtSfWc6nId765KyuybBZUn
         z7x2xNOF60dkBNPzUWRIuTksZ6nmA6EnEN9XSHjcqo3nR1L/eJsugHwNW5VDAUTGYVbn
         C7CNuztfHQP6q09EqLB2xOTCH5ogdd0uluBSXsudng98zy1vf2wVxq2p5ZM04X2a6AiK
         5N1Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pnntAiHbILt5jBRM2/iTQnR8/r3wesTZaYSUO2bMMpgnufJ3w0b
	xDRRIN8P3kamWxHXSSrCzOs=
X-Google-Smtp-Source: AA0mqf6GIk3xqgYMR8vaRez/pgDb+BlTCBlqVzIYtaoVpdwUqtMVACVZnUA/1GpPs+P7hLYIEhfQdQ==
X-Received: by 2002:a05:651c:1107:b0:277:4275:a837 with SMTP id e7-20020a05651c110700b002774275a837mr31916348ljo.393.1671003083194;
        Tue, 13 Dec 2022 23:31:23 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5e3b:0:b0:49a:b814:856d with SMTP id o27-20020ac25e3b000000b0049ab814856dls1114906lfg.1.-pod-prod-gmail;
 Tue, 13 Dec 2022 23:31:19 -0800 (PST)
X-Received: by 2002:a05:6512:3e19:b0:4b0:6023:6f6f with SMTP id i25-20020a0565123e1900b004b060236f6fmr8907297lfv.57.1671003079685;
        Tue, 13 Dec 2022 23:31:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671003079; cv=none;
        d=google.com; s=arc-20160816;
        b=HXOc/2lOjvHJsTV1tTYzpmEuzo4tuegCXHF3/hV8NpNKvMP5MJzEmqiZJHxazSqwWi
         MnkiVVBUesi0+auezDP6QEwLGNGY1EiLTMXxYjeq9uOpdQ4OTSu5em/BBcy1RtN8Bpi2
         ORcqu6z+VrFBO00/u8HBU1PJL0Um1ab7ynn3oyVEoSBIM9JMSqPNR0+nFWA3GlUdwLlO
         BvLujcaMIwQ4Pz5t1lQ2dFIOLv7H4fUh9LCmZuSJBg0I41gQ0CWJOzu2+L+ULbaWsbAa
         m3Mn69d+6YKPTcAq3I/9sfAdxzTDKeL0gpkqq2AlUwB39+lF0oDO2LBG7FjO74V3HAaO
         SGmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=gX8PzRfFrd37IM8OEUM00zEFO8J8l9fCKBJH8Q0IYYs=;
        b=cqW0tIwIZU0E9jtyHiskUZYiIiAwesCZPkxGVPbnpuHHVjOeWLAABNXYNbrQxXaqtr
         D5B41RmTwsR3LhsQuTE1lJ0o4sE5gXMo/TI2zpD8//WmHrcN+oBG2OzNhWq7X3KDnB8z
         jDhhUdCnxG6EskVxSJbRvYpjBgn+h87ZjA/fXB4XnZ4VO8Q3REVT6Onb5ZbbBo3aqLWG
         AXlavTH+WTSPv3YmdK1dhwQz6fd8EtXEcDMtHllzrZ1XXL2okoqRw2J2e8b1iiSZPQP4
         zQ+n+z1j0tGTKD3Y4WP4NaWh+9nT8nF2BNZKilt40dqVLva/TE+oAaZJ1bFRgarnYSNp
         NO4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [194.94.157.149])
        by gmr-mx.google.com with ESMTPS id p11-20020ac24ecb000000b004abdb5d1128si246745lfr.2.2022.12.13.23.31.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 23:31:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) client-ip=194.94.157.149;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 8759B6000053
	for <open-iscsi@googlegroups.com>; Wed, 14 Dec 2022 08:31:18 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 71F2B6000052
	for <open-iscsi@googlegroups.com>; Wed, 14 Dec 2022 08:31:18 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Wed, 14 Dec 2022 08:31:18 +0100
Message-Id: <63997BC4020000A1000506F5@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.4.2
Date: Wed, 14 Dec 2022 08:31:16 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] [PATCH 1/2] scsi:core:Add sysfs interface to
 control if skip lun with PQ=1
References: <20221214070846.1808300-1-haowenchao@huawei.com>
 <20221214070846.1808300-2-haowenchao@huawei.com>
In-Reply-To: <20221214070846.1808300-2-haowenchao@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> "'Wenchao Hao' via open-iscsi" <open-iscsi@googlegroups.com> schrieb am
14.12.2022 um 08:08 in Nachricht
<20221214070846.1808300-2-haowenchao@huawei.com>:

...

> +	 * Targets set PQ=1 would be skipped if shost->no_skip_pq1 is not set

I would write "Targets that set ..." instead.

...


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/63997BC4020000A1000506F5%40gwsmtp.uni-regensburg.de.
