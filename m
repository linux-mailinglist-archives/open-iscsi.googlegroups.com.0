Return-Path: <open-iscsi+bncBCE5XHGSXEHBBHEN26MAMGQE4LPFJCI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E75175ACF30
	for <lists+open-iscsi@lfdr.de>; Mon,  5 Sep 2022 11:51:26 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id db3-20020a056214170300b00496c0aabfc9sf5583346qvb.16
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Sep 2022 02:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:sender:from:to:cc
         :subject:date;
        bh=qrMcbdL/ssCbnn3eGwcYj04WZxY50h5tBkSa+vgqyhA=;
        b=tX/3/sAn9HGCbXWu73ti/Mqqeo8DsSTRNgopwqVGshSditRwwUhvfwjnyCCYUrfY4T
         6QdBJK1OgS1KEdsNGYn8vFXbs6/fXYXiKGiilZo/aVQE05ibakiPSnIBuSz4olFCeNSA
         RgJ7Cwi0jFBmmEoxjbPfsEwofinpOSyJ3BOr1U8OebeInoU2FepMs7bpx+rAtaxuAUD5
         Yb/8ZduymqUNdCoIvvEmMYEScNzPQjZK8H1DgO5TGNemt/tkz12AyqtPbsb//rU4aBSn
         jg4VeYspGoIBPcpZZ6Rw2GOMhxfBlCbErgefCs6lswY1Zxl0PagRIh20rSqolPadp8B7
         HsLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:x-original-sender
         :mime-version:subject:message-id:to:from:date:from:to:cc:subject
         :date;
        bh=qrMcbdL/ssCbnn3eGwcYj04WZxY50h5tBkSa+vgqyhA=;
        b=MNwxl5DboMqlCX6YHCmfKnYLCsOjm+uMi8CI2O+3VKz71sWOW4AHJkG/XBXe1k9Zup
         /Jfzsvc51q+iBc5IsSn7jcdUIFLlCV6pHPcad3xGxLSqricqLDUjuf3tnpI2RIkt/gui
         9kOgMWbPn2iIu912TGkObFpb6vnGJXou7fpneBUZKs+8BMPUYKDlFj7EC+2JunBNvsSq
         t+AVye+6W2MfNhFv74d3KI1KibpGWGVJN1HinGGAa6tGeT0uUJnwja9hjqAtLYbv0xgP
         Rh7cPlFQOFBf0Has5+Ibd8VVC2HgrYUjbM+8YhAbT9WGIaqZ/tE8FIzwdTga4x7BziJz
         NxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-sender:mime-version:subject:message-id:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=qrMcbdL/ssCbnn3eGwcYj04WZxY50h5tBkSa+vgqyhA=;
        b=Oaj6myDdtvkcjo/HSdAa1urReW6l2IQHyyrQwVLtBDVcMUQaxpbUc/uhwfuE0X7NjP
         ayzfQeG+7xz7ptGxhXsOCbmOEhzODwohH+gX3hcVTy9X+eRw10gt34GH6zmCB+xpvzIL
         nZ71k/w2V9hwEAYAdXvhMag3RwxRaBC6v95UGLnF7OkzYqtYhN0RSQ1d/cv1z+t9NDy1
         CP7NsI9i0JxwMJDsIE6ZN3KFLPkEWEmTElbO/zh/yTLgR7twANcZncFTzAgOiRhDcWGj
         dw0eJ4gBcSNQnstfEqdqcWMEbpVv57gViMJ0mJX39ICow8NX6HizTW4zSzGCgk/bmThS
         D51w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ACgBeo3hL/YFwfMJ5tHH8Ca0+vWkM7PkhFK9Wm81ovq32CjM+wdoGb84
	Im3sRtrH7XfI0W5MUx4nKX0=
X-Google-Smtp-Source: AA6agR5FADwqT92RywJdYxxOKB7riZe4WO0+XX8T6V9gzO4nL+G3tMNLL+92udDrD0ZgBCW2PJqHig==
X-Received: by 2002:a05:622a:1207:b0:343:4a8:7580 with SMTP id y7-20020a05622a120700b0034304a87580mr37618480qtx.601.1662371485619;
        Mon, 05 Sep 2022 02:51:25 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ae9:e70d:0:b0:6b9:57ca:5d1 with SMTP id m13-20020ae9e70d000000b006b957ca05d1ls7509397qka.0.-pod-prod-gmail;
 Mon, 05 Sep 2022 02:51:24 -0700 (PDT)
X-Received: by 2002:a05:620a:2588:b0:6c9:2daa:9c6d with SMTP id x8-20020a05620a258800b006c92daa9c6dmr374849qko.630.1662371484056;
        Mon, 05 Sep 2022 02:51:24 -0700 (PDT)
Date: Mon, 5 Sep 2022 02:51:23 -0700 (PDT)
From: Gabor Opanszki <opanszkigabor@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <caf8c916-df39-444a-ba01-6fc2204bb9den@googlegroups.com>
Subject: FCoE target with LIO
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4190_1436711629.1662371483560"
X-Original-Sender: opanszkigabor@gmail.com
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

------=_Part_4190_1436711629.1662371483560
Content-Type: multipart/alternative; 
	boundary="----=_Part_4191_1694667384.1662371483561"

------=_Part_4191_1694667384.1662371483561
Content-Type: text/plain; charset="UTF-8"

Hi dear Members.

I want to create a 10G FCoE target with LIO software, the topology is 
simple.
I would like to export Luns over fcoe target. 

The fabric will be FCoE.
Luns are local block devices attached throught SAS raid controller.
Could someone share any of deploymant guides to this scenario?

I tried deploy this environment to my lab. i used HP server with Intel x520 
DA2 converged hba adapter, with no success. 

i found old discussions about target_core, tcm_fc, rtslib.  None of them 
helped to me.

i will be happy if i could get deployment guide or help from anyone.
Thanks,

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/caf8c916-df39-444a-ba01-6fc2204bb9den%40googlegroups.com.

------=_Part_4191_1694667384.1662371483561
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi dear Members.<div><br></div><div>I want to create a 10G FCoE target with=
 LIO software, the topology is simple.<br><div>I would like to export Luns =
over fcoe target.&nbsp;</div><div><br></div><div>The fabric will be FCoE.</=
div><div>Luns are local block devices attached throught SAS raid controller=
.</div><div>Could someone share any of deploymant guides to this scenario?<=
/div><div><br></div><div>I tried deploy this environment to my lab. i used =
HP server with Intel x520 DA2 converged hba adapter, with no success.&nbsp;=
</div><div><br></div><div>i found old discussions about target_core, tcm_fc=
, rtslib. &nbsp;None of them helped to me.</div><div><br></div><div>i will =
be happy if i could get deployment guide or help from anyone.</div><div>Tha=
nks,</div><div><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/caf8c916-df39-444a-ba01-6fc2204bb9den%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/caf8c916-df39-444a-ba01-6fc2204bb9den%40googlegroups.com</a>.=
<br />

------=_Part_4191_1694667384.1662371483561--

------=_Part_4190_1436711629.1662371483560--
