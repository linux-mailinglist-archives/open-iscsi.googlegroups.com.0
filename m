Return-Path: <open-iscsi+bncBDR7L5OKTAGBBX47YKAQMGQEBLGABFQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2153203A8
	for <lists+open-iscsi@lfdr.de>; Sat, 20 Feb 2021 05:28:16 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id t15sf3812339oon.2
        for <lists+open-iscsi@lfdr.de>; Fri, 19 Feb 2021 20:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t/aeJLjcUr/YWo2swzsPXq4d93HzE9/EQ6+/hxcjxzY=;
        b=W3X8halj8c61abOgSwwQNqm6tCOfBaCH9wshJjFIeqImBcyrcRnLjPmuLLu5UBTsPE
         HsNJlakBa3uhR6Gljl0UovS0DWy3JUW+7vHP8Qr0ROAORXnQrLgcP/8py7S9aLchYMuJ
         mSpC1APzK7tJaj1arPR9eCZo56l6i9llazp1C85OeK6qIA1pEjjJWyCrZq8WmdWoZaJg
         p8BcGoUwWZvXRgPEBCXcojsJz5jaWSqhSgBg4aX0dJ6e28gBBPFzfxmVcVxipa6Dcpnx
         y5oF+uOE6fX5wM1bWrFyzhd+nAPNiBZO6J1oDSQ+u/HcCsOpXRK8vsTCabts++bOZ2+C
         xYNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t/aeJLjcUr/YWo2swzsPXq4d93HzE9/EQ6+/hxcjxzY=;
        b=IdZYu1Au+TGBmEDYJfcoGx2IMC5H7qH4N346TY8CH6t7OqDhvHN81vikOUFQxPxtST
         B+f5w8iBgN9O8VPSRrMbM0F8QcxcH8sc64vQpIPgyqMSetB4h0JmAOSc8UIeyrg2ZOtG
         DRuB3iXnhGo5NLVOKL/qXNrtpFum+K2T7B2M4e0K73PMFYkf2/rmULfaBVS4+fa68ogb
         Fz/fQItamaMijsdGQoZgo+YZwM7sPhyOufiILxyQEgm88Jlnm03wNQkuxSQLurECzhQF
         nOMKugQZ7WUFs1KGiRwar4a567KaUvZZ2HJ6SUej70Ao9PNQ7D1F6BJMuwfZRUWPGm1P
         p6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t/aeJLjcUr/YWo2swzsPXq4d93HzE9/EQ6+/hxcjxzY=;
        b=IcA1cga74WMB3nfSYkTJoaHlkRm/jTpvHBmZIWhFdLvWIbwjaH0Qmp8SMxm7P2MoO5
         1oqYiRPoSE1g9mUu0mL2KNzjOLjD6GeOHbu9oyDq3P+r6PkAN0hBYHvJlYAWrn7vJ4pc
         CgLzJblo/PkXJzBNYbvdwSweOILpDdeqA29Wgu5cHuaYoWyuywFbtiKyqDdWbr4nEKgd
         IbvXlkAy5JC94w3Y0nuksxcFpIsGTnFql+3V8/FnRi987n6rANf9W4pbDorqK9/QZKr6
         yvtN9DSCwltUVWxJ+RLiTovZ6sTcJA/w+r6XN0Ng/h/GV9N904I1w9AblN3auHXzcGBo
         l88Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5311mkMNgPe1lSb/dOHsbgpo5/3ONxPLlwKKyG0k9Ss3WyaFyHk4
	AxEyKbt3val4aEmHeUHjObU=
X-Google-Smtp-Source: ABdhPJxx5KBuny8biH1vWOnYhnISeCEGAePa81JF9jA5PTkN4GApYRKL3zi6vfvcWjIn/Jt5kYndCg==
X-Received: by 2002:aca:4b0e:: with SMTP id y14mr9143852oia.145.1613795295523;
        Fri, 19 Feb 2021 20:28:15 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls2884173oif.10.gmail; Fri, 19
 Feb 2021 20:28:15 -0800 (PST)
X-Received: by 2002:aca:2417:: with SMTP id n23mr9372482oic.0.1613795294883;
        Fri, 19 Feb 2021 20:28:14 -0800 (PST)
Date: Fri, 19 Feb 2021 20:28:14 -0800 (PST)
From: "neutro...@gmail.com" <neutronsharc@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <f76e46dc-f2eb-48fa-8431-f85ee719a181n@googlegroups.com>
Subject: IO request returns prematurely when iscsi connection is down
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_626_1401593492.1613795294123"
X-Original-Sender: neutronsharc@gmail.com
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

------=_Part_626_1401593492.1613795294123
Content-Type: multipart/alternative; 
	boundary="----=_Part_627_243454816.1613795294123"

------=_Part_627_243454816.1613795294123
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I encounter a weird issue with open-iscsi.  I have a test machine with 500=
=20
iscsi volumes backed by an IP san.  The test machine then performs r/w with=
=20
o_direct on those 500 raw block devices.  During the test I trigger a=20
failure on the IP san so some iscsi connections break.  iscsi client is=20
able to reconnect and recover,  however,  immediately after recovery, =20
 some iscsi read finds corrupted data.

This issue happens frequently. After a lot of tracing on the IP san=20
server,  we become sure that those corrupted read requests have never been=
=20
received by iscsi server at IP san.

In the following timeline diagram,  the client generates the read around=20
time t1 when connections are turned down.  iscsi connection recovered at=20
time t2.  The time between t1 and t2 is about 15~20 seconds. Read returns=
=20
several seconds after t2. =20

                     cut iscsi connections             iscsi connection=20
recoveryed
------------------------- t1 ------------------------------------------- t2=
=20
---------------------------------->


The client machine uses Linux libaio to perform read/write.  The read/write=
=20
is performed in the following approach:

- blk devices are opened with O_DIRECT,  io buffer is 4K-aligned,  io=20
offset is 4K aligned.
- Call io_submit() to submit requests to blk device.
- call io_getevents() to wait for completion events.=20
     * If the status is =E2=80=9CN bytes done=E2=80=9D,  assumes I/O was su=
ccessful.
     * If the status is =E2=80=9C-1=E2=80=9D, assume IO failure.

Is it possible that,  iscsi layer will mark a blk_read/write completion=20
with 0-bytes done because the connection is not available,  and the upper=
=20
layer will receive a completion with 0-bytes as the result?

Thank you for reading.


-Shawn

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/f76e46dc-f2eb-48fa-8431-f85ee719a181n%40googlegroups.com.

------=_Part_627_243454816.1613795294123
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<div><br></div><div>I encounter a weird issue with open-iscsi.&nb=
sp; I have a test machine with 500 iscsi volumes backed by an IP san.&nbsp;=
 The test machine then performs r/w with o_direct on those 500 raw block de=
vices.&nbsp; During the test I trigger a failure on the IP san so some iscs=
i connections break.&nbsp; iscsi client is able to reconnect and recover,&n=
bsp; however,&nbsp; immediately after recovery,&nbsp; &nbsp;some iscsi read=
 finds corrupted data.</div><div><br></div><div>This issue happens frequent=
ly. After a lot of tracing on the IP san server,&nbsp; we become sure that =
those corrupted read requests have never been received by iscsi server at I=
P san.<br></div><div><br></div><div><div>In the following timeline diagram,=
&nbsp; the client generates the read around time t1 when connections are tu=
rned down.&nbsp; iscsi connection recovered at time t2.&nbsp; The time betw=
een t1 and t2 is about 15~20 seconds. Read returns several seconds after t2=
.&nbsp;&nbsp;</div><div><br></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;cut iscsi connections&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;iscsi connection recoveryed</div><div>---=
---------------------- t1 ------------------------------------------- t2 --=
--------------------------------&gt;</div><div><br></div><div><br></div></d=
iv><div>The client machine uses Linux libaio to perform read/write.&nbsp; T=
he read/write is performed in the following approach:</div><div><br></div><=
div>- blk devices are opened with O_DIRECT,&nbsp; io buffer is 4K-aligned,&=
nbsp; io offset is 4K aligned.</div><div>- Call io_submit() to submit reque=
sts to blk device.</div><div>- call io_getevents() to wait for completion e=
vents.&nbsp;</div><div>&nbsp; &nbsp; &nbsp;* If the status is =E2=80=9CN by=
tes done=E2=80=9D,&nbsp; assumes I/O was successful.</div><div>&nbsp; &nbsp=
; &nbsp;* If the status is =E2=80=9C-1=E2=80=9D, assume IO failure.</div><d=
iv><br></div><div>Is it possible that,&nbsp; iscsi layer will mark a blk_re=
ad/write completion with 0-bytes done because the connection is not availab=
le,&nbsp; and the upper layer will receive a completion with 0-bytes as the=
 result?<br></div><div><br></div><div>Thank you for reading.</div><div><br>=
</div><div><br></div><div>-Shawn</div><div><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/f76e46dc-f2eb-48fa-8431-f85ee719a181n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/f76e46dc-f2eb-48fa-8431-f85ee719a181n%40googlegroups.com</a>.=
<br />

------=_Part_627_243454816.1613795294123--

------=_Part_626_1401593492.1613795294123--
