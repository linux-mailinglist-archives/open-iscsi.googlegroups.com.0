Return-Path: <open-iscsi+bncBC5LJAFHUIPRBVMU6GDAMGQEZNCLZ2I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9423B80EB
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Jun 2021 12:41:28 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id q10-20020a056214018ab029027751ec9742sf1100751qvr.7
        for <lists+open-iscsi@lfdr.de>; Wed, 30 Jun 2021 03:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BiHwcF/hMUbcTr6VhQsBXKvAXHE7i5SzuCmaapf0VQ0=;
        b=iz44CJo+TuH5bmNKm0aUd0rAigj/OjmS0S3DyM7u0oioFS5ez2cEXNRZtU7+ny98IA
         l6yPUtz8QztxyPHto6Hf2IPujQHVURx69Dm/ZqurzmfIrcLsjXsVbSOKTEH6Y7YaSaOn
         vgGvB4OY2XRSOSJo9iai9jg6anWi1vW9YJGF36YZkRnOkukCAzchJenMlVSzcxd84Xli
         BSL6v7aWQL3U6+iMRG1ZzwR8YrAkxYzMsaI8o8MbG4Cot44vwQtarOGYVyckuKe6Cw6f
         n1Z8WwbDVdJlDRZq2ttj5RTZTHeBQm7zfQbAWgpnzYgcmVguyeaHTkeEE8ga5yNPMtKK
         ovpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=4cgroup-co-za.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BiHwcF/hMUbcTr6VhQsBXKvAXHE7i5SzuCmaapf0VQ0=;
        b=iWW5DqGnkCRnTjN1Cd9+/s1s/M2Zf5t71YwWZZhYEobq+gW5+hku7Iw+i10YpvlXz1
         KBKXeb22xUBDEBJBuJUNrREZxWqRqSsJY3pvXOhRUftMWO5gt+b0x55FcL8YS6ifBUZH
         Gv6oJCTlLdl4bZ7hiRpmoO4w0Re0+/t9b9p2Rcrgl/Tb/HvhIGYQCvWX+86vERWAvtku
         VCRuuIOiXCOIand3Y4/hBfHUdD4f+sMWiuot0tjrKYfdDsCmr1MDu5SJjrUn6KuAcN8D
         EAON7FbxlsbYE1HZeLcsWlMo1SZGKYQRsa2KoQIRpxbKUXxFAUXd3m0doQkJqeYTBXgW
         KSvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BiHwcF/hMUbcTr6VhQsBXKvAXHE7i5SzuCmaapf0VQ0=;
        b=a/bkE5dEWwmwnVIedRzX+2cW4zWYV9IVMDcxjyRXiUvn/i7dfQ1HYiBVvnuURdOo56
         nRXy9EKrDSfThj3TUtQJ1UEEkfWjJCFwYM8UVAM3c2zzTfklZAxaP0Rl1Q172AdUhoZJ
         EuCnpMyd1G3ysYpyCUOt2vpvZSrNfRcecKhBVdwlDZ7OQZYHN8Pg9PIdqf9NqnGB+rp8
         Lz5CCNEWZJMgBs50bzJuRXznU9RCZDby7wJfnuRRZDJYFBXIJsrscDAxrJ4iu9n4wzJU
         Sv8taJC+I6K9NkSwO7h1IxUsveHh+OKOL/6Yx39VrMsxBTyVoRa0ucYtxxXMV7WNWfwK
         Iqzg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5301zntlO5nmj3l9elKvVExiz7IgPDLOsl2vwq1qCxOO4prG0xdC
	cWfC/yyTNkb49YRmvj4flgg=
X-Google-Smtp-Source: ABdhPJz8NQcmFFscxLd9YXxZB0sTNm6wUyUfotKcfm4W/hjeBul73RQVjdvUdx+9IUaGCwbRzgtbAA==
X-Received: by 2002:ac8:7b86:: with SMTP id p6mr30566563qtu.48.1625049685956;
        Wed, 30 Jun 2021 03:41:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:f214:: with SMTP id m20ls1151047qkg.5.gmail; Wed, 30 Jun
 2021 03:41:25 -0700 (PDT)
X-Received: by 2002:a05:620a:1033:: with SMTP id a19mr16750801qkk.32.1625049685346;
        Wed, 30 Jun 2021 03:41:25 -0700 (PDT)
Date: Wed, 30 Jun 2021 03:41:24 -0700 (PDT)
From: Riaan Pretorius <riaan.pretorius@4cgroup.co.za>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <07b30064-72b3-42c1-ae71-f40c885c06ffn@googlegroups.com>
Subject: ISCSI Target and Initiator on same host
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2179_905199081.1625049684781"
X-Original-Sender: riaan.pretorius@4cgroup.co.za
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

------=_Part_2179_905199081.1625049684781
Content-Type: multipart/alternative; 
	boundary="----=_Part_2180_1534792814.1625049684781"

------=_Part_2180_1534792814.1625049684781
Content-Type: text/plain; charset="UTF-8"

I have an interesting question to ask:

Is it possible to share the target on the same server as a initiator ?
e.g. server1: target -> server1: initiator 

And then share:
server1: target > server2: initiator 


The idea here it it is sharing a lun to the target itself and other 
servers. The intention is to use it with oracle RAC. 

Something like this possible with ISCSI?

maybe not the right forum to ask, but asking the creators might get a 
better answer

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/07b30064-72b3-42c1-ae71-f40c885c06ffn%40googlegroups.com.

------=_Part_2180_1534792814.1625049684781
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have an interesting question to ask:<div><br></div><div>Is it possible to=
 share the target on the same server as a initiator ?</div><div>e.g. server=
1: target -&gt; server1: initiator&nbsp;</div><div><br></div><div>And then =
share:</div><div>server1: target &gt; server2: initiator&nbsp;<br></div><di=
v><br></div><div><br></div><div>The idea here it it is sharing a lun to the=
 target itself and other servers. The intention is to use it with oracle RA=
C.&nbsp;</div><div><br></div><div>Something like this possible with ISCSI?<=
/div><div><br></div><div>maybe not the right forum to ask, but asking the c=
reators might get a better answer</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/07b30064-72b3-42c1-ae71-f40c885c06ffn%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/07b30064-72b3-42c1-ae71-f40c885c06ffn%40googlegroups.com</a>.=
<br />

------=_Part_2180_1534792814.1625049684781--

------=_Part_2179_905199081.1625049684781--
